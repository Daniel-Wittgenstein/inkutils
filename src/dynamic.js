const settings = {
  prefix: "u3_",
  argumentsCount: 20,
}

function getArgsString(prefix, count) {
  return Array.from({ length: count }, (_, i) => prefix + (i + 1)).join(", ")
}

function generatePickFuncForArgs(argsCount) {
  const args = getArgsString(settings.prefix, argsCount)
  const content = Array.from({ length: argsCount })
    .map((_, i) => `\n\t-\n\t~ return ${settings.prefix}${i + 1}`)
    .join("")
  return (
    `=== function pick${argsCount}(${args})` +
    `\n\t{ shuffle:` +
    `${content}` +
    `\n\t}`
  )
}

function generatePick() {
  let out = ""
  for (let i = 2; i < settings.argumentsCount + 1; i++) {
    out += generatePickFuncForArgs(i) + "\n\n"
  }
  return out
}




function expo() {
  return generatePick()
}

module.exports = expo