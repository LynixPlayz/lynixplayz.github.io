gsap.to(".pContent", {
    yPercent: 200,
    ease: "none",
    scrollTrigger: {
      trigger: ".pSection",
      // start: "top bottom", // the default values
      // end: "bottom top",
      scrub: true
    }, 
  });
  
  gsap.to(".pImage", {
    yPercent: 10,
    ease: "none",
    scrollTrigger: {
      trigger: ".pSection",
      // start: "top bottom", // the default values
      // end: "bottom top",
      scrub: true
    }, 
  });
  gsap.timeline({
    scrollTrigger: {
      trigger: ".shoe",
      start: "center center", 
      end: "bottom top",
      scrub: true,
      pin: true
    }
  })
    .from(".midsole",  { y: innerHeight * 1.5 })
    .from(".outsole", { y: innerHeight * 1.5 })
    .from(".logo", { y: innerHeight * 1.5 });
    