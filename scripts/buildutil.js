
function getArgsString(count) {
  return Array.from({ length: count }, (_, i) => "u3_p" + (i + 1)).join(", ")
}

function xx(args = 4) {
  let s = ""
  for (let i = 1; i <= 20; i++) {
    if (i <= args) {
      s += "u3_p" + i
    } else {
      s += '"%u3empty"'
    }
    if (i !== 20) s += ", "
  }
  let t = `
    === function pick${args}(${getArgsString(args)})
      ~ u3_set_global(${s})
      ~ return u3_get_global(RANDOM(1, ${args}))
  `
  return t
}

let out = ""
for (let i = 1; i <= 20; i++) {
  out += xx(i)
}

console.log(out)