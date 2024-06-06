const fs = require("fs")

const dynamicData = require("../src/dynamic.js")()

let staticData = fs.readFileSync("./src/static.ink", { encoding: 'utf8', flag: 'r' })

const totalData = staticData + "\n\n" + dynamicData 

fs.writeFileSync("./dist/inkutils-compact.ink", staticData, {encoding: 'utf8'})
fs.writeFileSync("./dist/inkutils-all.ink", totalData, {encoding: 'utf8'})