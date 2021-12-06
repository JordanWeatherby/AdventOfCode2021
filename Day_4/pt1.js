import $ from "jquery";
function readFile() {
    $.get("textFile.txt", function(data) {
    var items = data.split(/\r?\n/).map( pair => pair.split(/\s+/).map(Number) );
    return $('#result').text(JSON.stringify(items));
});
}

readFile()
console.log('test')