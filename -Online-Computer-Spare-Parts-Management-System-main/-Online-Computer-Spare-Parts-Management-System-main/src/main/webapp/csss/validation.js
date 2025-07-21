document.getElementById('hardwareForm').addEventListener('submit', function(event) {
    let cpu = document.getElementById('cpu');
    let vcard = document.getElementById('vcard');
    let mem = document.getElementById('mem');
    let mboard = document.getElementById('mboard');
    let cool = document.getElementById('cool');
    let ssd = document.getElementById('ssd');

    // Check if any selection fields are not chosen
    if (cpu.value === "Select CPU" || cpu.value === "") {
        alert("Please select a CPU.");
        event.preventDefault();
    }

    if (vcard.value === "Select Video Card" || vcard.value === "") {
        alert("Please select a Video Card.");
        event.preventDefault();
    }

    if (mem.value === "Select Memory" || mem.value === "") {
        alert("Please select Memory.");
        event.preventDefault();
    }

    if (mboard.value === "Select Motherboard" || mboard.value === "") {
        alert("Please select a Motherboard.");
        event.preventDefault();
    }

    if (cool.value === "Select CPU Cooler" || cool.value === "") {
        alert("Please select a CPU Cooler.");
        event.preventDefault();
    }

    if (ssd.value === "Select Storage" || ssd.value === "") {
        alert("Please select Storage.");
        event.preventDefault();
    }

    // Optionally, you can add custom validation for email too.
});