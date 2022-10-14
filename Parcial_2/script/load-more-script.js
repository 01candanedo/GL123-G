let loadMoreBtn = document.querySelector('#load-more-btn');
let currentItem = 4;

loadMoreBtn.onclick = () =>{
   let boxes = [...document.querySelectorAll('.load-more-product-container .product-card')];
   for (var i = currentItem; i < currentItem + 4; i++){
      boxes[i].style.display = 'inline-block';
   }
   currentItem += 4;

   if(currentItem >= boxes.length){
      loadMoreBtn.style.display = 'none';
   }
}