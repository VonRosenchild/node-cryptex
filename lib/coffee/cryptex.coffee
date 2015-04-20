crypto = require('crypto')

exports.encrypt = (text, key, iv, algorithm='aes-256-cbc', input_encoding='utf-8', output_encoding='hex') ->
  cipher = crypto.createCipheriv(algorithm, key, iv)
  crypted = cipher.update(text, input_encoding, output_encoding)
  crypted += cipher.final(output_encoding)
  crypted

exports.decrypt = (crypted, key, iv, algorithm='aes-256-cbc', input_encoding='hex', output_encoding='utf-8') ->
  decipher = crypto.createDecipheriv(algorithm, key, iv)
  decrypted = decipher.update(crypted, input_encoding, output_encoding)
  decrypted += decipher.final(output_encoding)
  decrypted
