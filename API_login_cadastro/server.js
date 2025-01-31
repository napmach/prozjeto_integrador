import express from 'express'
import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

const app = express()
app.use(express.json())

app.post('/usuarios', async(req, res)=>{

        await prisma.user.create({
            data: {
                email: req.body.email,
                name: req.body.name,
                senha: req.body.senha
            }
        }
        )

    res.status(201).json(req.body)
})

app.get('/usuarios', async(req, res)=>{
    const users = await prisma.user.findMany()
    res.status(200).json(users)
})

app.put('/usuarios/:id', async (req, res)=> {
    await prisma.user.update({
        where: {
            id: req.params.id
        },
        data:{
            senha: req.body.senha
        }
    })
    res.status(203).json({message:"Senha resetada com sucesso!"})
})


app.listen(3000)