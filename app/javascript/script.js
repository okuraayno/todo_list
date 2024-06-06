const slider = document.getElementById("priority-slider");
const labels = document.querySelectorAll("#priority-labels .label");

slider.addEventListener("input", function() {
  const value = this.value;
  labels.forEach(function(label, index) {
    if (index == value) {
      label.style.fontWeight = "bold";
    } else {
      label.style.fontWeight = "normal";
    }
  });
});