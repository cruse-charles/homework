document.addEventListener("DOMContentLoaded", () => {
  // toggling restaurants

  const toggleLi = (e) => {
    const li = e.target;
    if (li.className === "visited") {
      li.className = "";
    } else {
      li.className = "visited";
    }
  };

  document.querySelectorAll("#restaurants li").forEach((li) => {
    li.addEventListener("click", toggleLi);
  });



  // adding SF places as list items

  // --- your code here!
  const addFavoriteList = (e) => {
    e.preventDefault();

    const favoriteInput=document.querySelector(".favorite-input");
    const favorite=favoriteInput.value;
    favoriteInput.value="";
    
    const newLi=document.createElement("li");
    newLi.textContent=favorite;
    const favoritesList=document.getElementById("sf-places");
    favoritesList.appendChild(newLi);
  };

  const listSubmitButton=document.querySelector(".favorite-submit");
  listSubmitButton.addEventListener("click",addFavoriteList);


  // adding new photos

  // --- your code here!



});
