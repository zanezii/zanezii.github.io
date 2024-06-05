// show more/less点击切换
function toggle_vis(id) {
    var element = document.getElementById(id);
    var linkText = element.style.display === "none" ? "Show Less" : "Show More";
    var linkElement = document.querySelector(`a[href="javascript:toggle_vis('${id}')"]`);
    
    element.style.display = element.style.display === "none" ? "block" : "none";
    linkElement.textContent = linkText;
    
    if (linkText === "Show Less") {
      linkElement.setAttribute("href", "javascript:toggle_vis('newsmore')");
    } else {
      linkElement.setAttribute("href", "javascript:toggle_vis('newsmore')");
    }
  }