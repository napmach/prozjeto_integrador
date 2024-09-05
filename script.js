// carrossel | slider

// let list = document.querySelector('.slider .list');
// let items = document.querySelectorAll('.slider .list .item');
// let dots = document.querySelectorAll ('.slider .dots li');
// let previous = document.getElementById('previous');
// let next = document.getElementById('next');

// let active = 0;
// let lengthItems = items.length - 1

// next.onclick = function(){
//     if(active + 1 > lengthItems){
//         active = 0
//     }else{
//         active = active +1;
//     }
//     reloadSlider();
// }

// function reloadSlider(){
//     let checkLeft = items[active].offsetLeft;
//     list.computedStyleMap.left = -checkLeft + 'px';

//     let lastActiveDot = document.querySelector('.slider .dots li.active');
//     lastActiveDot.classList.remove('active;');
//     dots[active].classList.add('active');

// }

let slider = document.querySelector('.slider .list');
let items = document.querySelectorAll('.slider .list .item');
let next = document.getElementById('next');
let prev = document.getElementById('prev');
let dots = document.querySelectorAll('.slider .dots li');

let lengthItems = items.length - 1;
let active = 0;
next.onclick = function(){
    active = active + 1 <= lengthItems ? active + 1 : 0;
    reloadSlider();
}
prev.onclick = function(){
    active = active - 1 >= 0 ? active - 1 : lengthItems;
    reloadSlider();
}
let refreshInterval = setInterval(()=> {next.click()}, 3000);
function reloadSlider(){
    slider.style.left = -items[active].offsetLeft + 'px';
    // 
    let last_active_dot = document.querySelector('.slider .dots li.active');
    last_active_dot.classList.remove('active');
    dots[active].classList.add('active');

    clearInterval(refreshInterval);
    refreshInterval = setInterval(()=> {next.click()}, 3000);

    
}

dots.forEach((li, key) => {
    li.addEventListener('click', ()=>{
         active = key;
         reloadSlider();
    })
})
window.onresize = function(event) {
    reloadSlider();
};


// Swiper para meio de página

new Swiper('.card_wrapper', {
    loop: true,
    spaceBetween: 20,
  
    // Bullets de página
    pagination: {
      el: '.swiper-pagination',
    },
  
    // Navigation arrows
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },

    // Responsive breakpoints
    breakpoints: {
        0:{
            slidesPerView: 1
        },
        768:{
            slidesPerView: 2
        },
        1024:{
            slidesPerView: 3.2
        }
    }
  });