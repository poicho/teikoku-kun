# Description:
#   Utility commands surrounding Hubot uptime.
#
# Commands:
#   hubot ping - 応答します

module.exports = (robot) ->
  robot.respond /PING$/i, (msg) ->
    msg.send msg.random saito

  robot.respond /ADAPTER$/i, (msg) ->
    msg.send robot.adapterName

  robot.respond /ECHO (.*)$/i, (msg) ->
    msg.send msg.match[1]

  robot.respond /TIME$/i, (msg) ->
    msg.send "今の時間は: #{new Date()}"

  robot.respond /DIE$/i, (msg) ->
    msg.send "じゃあの."
    process.exit 0

  for n in saito_nature
    do (n) ->
      robot.hear n.pattern, (msg) ->
        msg.send msg.random n.txt

saito = [
  "ぽいちょ！", "ぽいちょ！", "ぽいちょ！", "ぽいちょ！",
  "全部ぽいちょ！",
  "じゃあ、モクモクしちゃう?",
  "モックモックさせてよー http://youtu.be/jfMEFJbDI2s?t=1m30s"
]

saito_nature =
  [
    {
      pattern: /おやすみ|ねる|寝/i,
      txt: [
        "ぼくもねるー"
      ]
    },
    {
      pattern: /できた|あああ|ー!|ー！|おｋ|おk|いいね|!!|！！|ぽいちょ/i
      txt: [
        'なにがおこっている',
        "もし\nよいか", "ほう", "おおお。。"
        "おおおおおおおい\nあああああああああああああ",
        "はーいw", "なんと。。",
        "降りて来た\n久しぶりに自分に溺れる\nこれはエロい",
        "エロいエロいぞおおおーーーーーいったつ！",
        "さぁ乗ってきました。\nきれてます！ ",
        "ほくもぬぐ！", "なるほど了解",
        "脳圧MAX\nしばし瞑想の世界にもぐります。",
        "あたまのなかにお花がさいてkちあ",
        "ふくのがめんどうなので部屋にぶちまけてやった",
        "そ", "おう", "ふー", "新しいな", "これはエロい"
      ]
    },
  ]
