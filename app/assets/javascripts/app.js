/*

   /  Plugins Options and Stuff.

*/


jQuery(document).ready(function ($) {



  /*''''''''''''''''''''''''''''''''''''' /   Sticky Header  */
  
  $(".header").sticky({ topSpacing: 40 });
  $(".header").sticky({ bottomSpacing: 127 });


  /*''''''''''''''''''''''''''''''''''''' /   FitVids  */

  // Basic FitVids Test
  $(".content").fitVids();
  // Custom selector and No-Double-Wrapping Prevention Test
  $(".content").fitVids({ customSelector: "iframe[src^='http://socialcam.com']"});


  /*''''''''''''''''''''''''''''''''''''' /   Snap Toggle  */

  var addEvent = function addEvent(element, eventName, func) {
    if (element.addEventListener) {
        return element.addEventListener(eventName, func, false);
      } else if (element.attachEvent) {
          return element.attachEvent("on" + eventName, func);
      }
  };

  document.getElementById('open-right').addEventListener('click', function(){
    snapper.open('right');
  });





});