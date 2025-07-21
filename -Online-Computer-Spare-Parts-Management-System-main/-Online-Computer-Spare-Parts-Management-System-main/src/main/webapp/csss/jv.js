let slideIndex = 0;
showSlides();

function showSlides() {
    let slides = document.getElementsByClassName("slide");
    for (let i = 0; i < slides.length; i++) {
        slides[i].style.display = "none";
    }
    slideIndex++;
    if (slideIndex > slides.length) {
        slideIndex = 1
    }
    slides[slideIndex - 1].style.display = "block";

    // Reset animation for text and button
    const slideText = slides[slideIndex - 1].getElementsByClassName('slide-text')[0];
    const slideDescription = slides[slideIndex - 1].getElementsByClassName('slide-description')[0];
    const button = slides[slideIndex - 1].getElementsByClassName('button')[0];

    slideText.style.opacity = 0;
    slideDescription.style.opacity = 0;
    button.style.opacity = 0;

    setTimeout(() => {
        slideText.style.opacity = 1;
        slideDescription.style.opacity = 1;
        button.style.opacity = 1;
    }, 100); // Small delay for the effect

    setTimeout(showSlides, 5000); // Change image every 5 seconds
}

function plusSlides(n) {
    slideIndex += n;
    showSlides();
}