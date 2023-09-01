const fs = require("fs");
const path = require("path");

let fileCount = 0;

/**
 * Recursive function that find sql files in a specific folder and it subfolders
 *
 * @param {string} startPath
 * @param {string} destPath
 */
function searchAndCopySqlFiles(startPath, destPath) {
  if (!fs.existsSync(startPath)) {
    console.error("No such directory: ", startPath);
    return;
  }

  const files = fs.readdirSync(startPath);

  for (let i = 0; i < files.length; i++) {
    const currentPath = path.join(startPath, files[i]);

    if (fs.statSync(currentPath).isDirectory()) {
      searchAndCopySqlFiles(currentPath, destPath);
    } else if (path.extname(currentPath) === ".sql") {
      const newFileName = `${
        (++fileCount).toString().length === 1 ? "0" : ""
      }${fileCount.toString()}_${files[i]}`;
      const destFilePath = path.join(destPath, newFileName);

      fs.copyFileSync(currentPath, destFilePath);
      console.log(`Copied ${currentPath} to ${destFilePath}`);
    }
  }
}

// Ruta inicial de búsqueda y ruta de destino
const sourcePath = "./scripts"; // Reemplaza '/path/to/source' con tu ruta de origen
const destinationPath = "./db-scripts"; // Reemplaza '/path/to/destination' con tu ruta de destino

searchAndCopySqlFiles(sourcePath, destinationPath);
