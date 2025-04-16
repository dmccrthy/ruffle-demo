/**
 * Create HTML for game and given template
 * @author Dan McCarthy
 */

const fs = require("fs");
const path = require("path");

/**
 * Create HTML for specified game.
 * @param {String} file Game file to create HTML
 */
function buildHtml(file) {
    let filePath = file.split("/");
    let name = filePath[filePath.length - 1].split(".")[0];
    let template = fs
        .readFileSync(path.resolve("../src/template.html"))
        .toString();

    // Replace title, and game path values
    template = template.replace(/{title}/g, name);
    template = template.replace(/{game}/g, file);

    fs.writeFileSync(path.resolve(`./${name}.html`), template);
}

// Run build page with provided game file
buildHtml(process.argv[2]);
