cryptex = require("../../index")

key = new Buffer(32)
iv = new Buffer(16)


text = "hello, world!"
enc = cryptex.encrypt(text, key, iv)
dec = cryptex.decrypt(enc, key, iv)

console.log " "
console.log "Plain Text: #{text}"
console.log " "

test = ->
  try
    enc && console.log "Successfully encrypted [#{text}], result: #{enc}"
  catch error
    console.log "Error: #{error}"
  try
    dec && console.log "Successfully decrypted [#{enc}], result: #{dec}"
  catch error
    console.log "Error: #{error}"

test()

if test
  if dec is text
    console.log " "
    console.log "Tests successfully passed!"
    console.log " "
  else
    console.log " "
    console.log "Tests not passing, there's something wrong here..."
    console.log " "
