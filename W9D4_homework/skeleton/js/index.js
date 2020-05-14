console.log("Hello from the JavaScript console!");

// Your AJAX request here

// Add another console log here, outside your AJAX request
$.ajax({
    method: "Get",
    url: "http://api.openweathermap.org/data/2.5/weather?q=new%20york,US&appid=bcb83c4b54aee8418983c2aff3073b3b",
    dataType: "json",
    success(data) {
        console.log("1. weather below");
        console.log(data);
        
    },
    error() {
        console.error("2. error");
    }

})
console.log("3. AJAX done");

