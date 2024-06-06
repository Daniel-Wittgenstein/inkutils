import {Story} from "inkjs"
import fs from 'fs'
import chalk from 'chalk'

let fileContent = fs.readFileSync("./tests/teststory.ink.json", "utf8")
fileContent = fileContent.replace(/^\uFEFF/, "") //strip the BOM
const story = new Story(fileContent)

function run() {
  console.log(chalk.bgBlue.white('Running tests:'))
  let even = true
  let lastParagraphText = ""
  while(story.canContinue) {
    even = !even
    const paragraphText = story.Continue()
    if (even && lastParagraphText !== paragraphText) {
      console.log(chalk.bgRed.white('Test failed'))
      console.log(chalk.bgRed.white(`Test failed: strings should be equal, but they are not:`))
      console.log(chalk.bgYellow.black(`###\n${lastParagraphText}###\n`))
      console.log(chalk.bgRed.white(`vs expected:\n`))
      console.log(chalk.bgGreen.white(`###\n${paragraphText}###\n`))

      return false
    }
    lastParagraphText = paragraphText
  }
  return true
}

if (run()) {
  console.log(chalk.bgGreen.white('All tests passed!'))
}
