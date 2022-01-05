window.onload = function() {
//Sélection du burger sur mobile
let menuMobile = document.querySelector('#burger');
menuMobile.addEventListener('click', displayMenu);

/**Cartes services***/
let arrows = document.querySelectorAll('.suivant');
arrows.forEach( arrow => {
  arrow.addEventListener('click', nextContent);
});
}
//////////////////////////////////////////////////////
/****Cartes services****/
function nextContent() {
  let cartes = document.querySelectorAll('.contenu-card');
  cartes.forEach(carte => {
    carte.classList.remove('active')
  });

  let id = this.dataset.id;
  document.querySelector(`#${id}`).classList.add('active');
}

//Fonction pour faire apparaître le menu sur mobile au "click" burger
function displayMenu() {
  let navDisplay = document.querySelector('.nav ul');
  navDisplay.style.display = 'block';
}

/*Fermeture*/
window.addEventListener('click', closeMenu);

function closeMenu(event) {
  if(event.target.matches('.nav ul')) {
    document.querySelector('.nav ul').style.display = 'none';
  }
}

