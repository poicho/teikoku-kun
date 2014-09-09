# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ping - 応答します
#   hubot time - 今の時間を教えます
#   hubot die - hubot を終了させます

module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    msg.send msg.random ["全部ぽいちょ！", "ぽいちょ！", "じゃあ、モクモクしちゃう?", "モックモックさせてよー http://youtu.be/jfMEFJbDI2s?t=1m30s"]

  robot.respond /ADAPTER$/i, (msg) ->
    msg.send robot.adapterName

  robot.respond /ECHO (.*)$/i, (msg) ->
    msg.send msg.match[1]

  robot.respond /TIME$/i, (msg) ->
    msg.send "今の時間は: #{new Date()}"

  robot.respond /DIE$/i, (msg) ->
    msg.send "じゃあの."
    process.exit 0

