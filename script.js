document.addEventListener("DOMContentLoaded", () => {
    const loadDataButton = document.getElementById("load-data");
    const dataContainer = document.getElementById("data-container");

    loadDataButton.addEventListener("click", () => {
        fetch("/get_data")
            .then(response => response.json())
            .then(data => {
                dataContainer.innerHTML = "<p>" + data.message + "</p>";
            });
    });
});
