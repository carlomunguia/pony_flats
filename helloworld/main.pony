actor Speaker
 let outstream: Outstream = Outstream
  be say(out: outstream, message: String) =>
    out.print(message)

actor Main
  new create(env: Env) =>
  let speaker = Speaker
    speaker.say(env.out, "hello")



