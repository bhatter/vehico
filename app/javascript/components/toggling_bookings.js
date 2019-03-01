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

const renterTabToggle2 = (x, y) => {

  x.classList.remove("inactive");
  x.classList.add("active");
  y.classList.remove("active");
  y.classList.add("inactive");
};

const ownerTabToggle2 = (f,p) => {
  p.classList.remove("inactive");
  p.classList.add("active");
  f.classList.remove("active");
  f.classList.add("inactive");
};


const addEventListenerToTabs = tab => {
  const renterTab = document.getElementById("renter-tab");
  const ownerTab = document.getElementById("owner-tab");
  const renterBookings = document.getElementById("as_renter");
  const ownerBookings = document.getElementById("as_owner");

  renterTabToggle(renterBookings, ownerBookings);
  renterTabToggle2(renterTab, ownerTab);

  renterTab.addEventListener("click",  function() {
    renterTabToggle(renterBookings, ownerBookings);
    renterTabToggle2(renterTab, ownerTab);
  });

  ownerTab.addEventListener("click", function() {
    ownerTabToggle(renterBookings, ownerBookings);
    ownerTabToggle2(renterTab, ownerTab);
  });


};

export { addEventListenerToTabs }
