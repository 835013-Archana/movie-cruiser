function valid() {
    var title = document.forms["edit-movie"]["title"].value;
    if (title == "") {
        alert("Title is required.");
        return false;
    }
    if (title.length < 2 || title.length > 100) {
        alert("Title should have 2 to 100 characters.");
        return false;
    }

    var boxOffice = document.forms["edit-movie"]["boxOffice"].value;

    if (boxOffice == "") {
        alert("Box Office is required.");
        return false;
    }
    if (isNaN(boxOffice)) {
        alert("Box Office has to be number.");
        return false;
    }
    var dateOfLaunch = document.forms["edit-movie"]["dateOfLaunch"].value;
    if (dateOfLaunch == "") {
        alert("Date of Launch is required.");
        return false;
    }
    var genre = document.forms["edit-movie"]["Genre"].value;
    if (genre == "") {
        alert("Select one genre");
        return false;
    }
}