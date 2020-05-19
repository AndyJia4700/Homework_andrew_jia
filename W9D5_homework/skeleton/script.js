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
const handleFavoriteSubmit=(e)=>{
  e.preventDefault();
  const favoriteInput = document.querySelector(".favorite-input");
  const favorite = favoriteInput.value;
  favoriteInput.value = "";
  const newListLi = document.createElement("Li");
  newListLi.textContent = favorite;
  const favoriteList = document.getElementById("sf-places");
  favoriteList.appendChild(newListLi);
  
};


  



  // adding new photos

  // --- your code here!



});
