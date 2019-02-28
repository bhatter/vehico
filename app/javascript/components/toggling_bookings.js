const renterTabToggle = (x, y) => {

  x.classList.remove("hide_booking");
  x.classList.add("show_booking");
  y.classList.remove("show_booking");
  y.classList.add("hide_booking");
};

const ownerTabToggle = (f,p) => {
  p.classList.remove("hide_booking");
  p.classList.add("show_booking");
  f.classList.remove("show_booking");
  f.classList.add("hide_booking");
};



const addEventListenerToTabs = tab => {
  const renterTab = document.getElementById("renter-tab");
  const ownerTab = document.getElementById("owner-tab");
  console.log(renterTab)
  console.log(ownerTab)
  const renterBookings = document.getElementById("as_renter");
  const ownerBookings = document.getElementById("as_owner");

  renterTab.addEventListener("click",  function() {renterTabToggle(renterBookings, ownerBookings)});

  ownerTab.addEventListener("click", function() {ownerTabToggle(renterBookings, ownerBookings)});


};

export { addEventListenerToTabs }
