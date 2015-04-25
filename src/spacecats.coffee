# Description
# cats and space and stars, oh my!
#
# Commands:
# hubot spacecat me - get cat in space
# hubot spacecat bomb - even moar cats in space
#
# Author:
#   Kelly Shearon

cats = [
  "http://editorial.designtaxi.com/news-catsinspace1006/3.gif"
  "http://editorial.designtaxi.com/news-catsinspace1006/6.gif"
  "http://37.media.tumblr.com/tumblr_lv2lke0s631r4xjo2o1_500.gif"
  "http://24.media.tumblr.com/afb1d46eb3e33ad7b7b8524de8d8a253/tumblr_mxou1sKyoe1qaets3o1_500.gif"
  "http://i.imgur.com/qqDXC4c.jpg"
  "http://31.media.tumblr.com/tumblr_m2ut9qqIzi1qcphveo1_500.jpg"
  "http://favim.com/orig/201104/04/Favim.com-13134.jpg"
  "https://pbs.twimg.com/media/BufTc7vCAAAxtEi.jpg"
  "https://pbs.twimg.com/media/BtWQE-jCQAAfLuq.jpg"
  "https://pbs.twimg.com/media/Btq1hY-IgAAm9aS.jpg"
  "https://pbs.twimg.com/media/Bt_svHxCQAA6MGD.jpg"
  "https://pbs.twimg.com/media/BuAzcpGIUAAHDCR.jpg"
  "https://pbs.twimg.com/media/BuUnFTNIAAABd1x.jpg"
  "https://pbs.twimg.com/media/Bs3wbtFCMAEWAGg.jpg"
  "https://pbs.twimg.com/media/Br-7xMDCEAATvWt.jpg"
  "https://pbs.twimg.com/media/Bq1lLs9IEAAJTxy.jpg"
  "https://pbs.twimg.com/media/BqyuAiFIUAIhoR_.jpg"
  "https://pbs.twimg.com/media/Bqste7UCQAEqBt0.jpg"
  "https://pbs.twimg.com/media/Bo7mi4QIEAADNkU.jpg"
  "https://pbs.twimg.com/media/BosDJVLIQAAo9HN.jpg"
  "https://pbs.twimg.com/media/BoaS3mdCYAAqvKY.jpg"
  "https://pbs.twimg.com/media/BoAoAc-IAAACQoE.jpg"
  "http://media.giphy.com/media/yVjAGbnsURRiU/giphy.gif"
  "http://media.giphy.com/media/uXEzp8EyeKlXO/giphy.gif"
  "http://media.giphy.com/media/a0u9F6Bn4GyWs/giphy.gif"
  "http://media2.giphy.com/media/uXEzp8EyeKlXO/giphy.gif"
  "http://media2.giphy.com/media/dQaMMqqmrdNC0/giphy.gif"
  "http://media0.giphy.com/media/RrIdGcnknHD0c/giphy.gif"
  "http://media.giphy.com/media/bBw3YpN3p8KHK/giphy.gif"
  "http://media.giphy.com/media/V9C7Xqyll8wiQ/giphy.gif"
  "http://media.giphy.com/media/lfJGd7k5tedLG/giphy.gif"
  "http://media.giphy.com/media/jAy1gChH4jXLG/giphy.gif"
  "http://media2.giphy.com/media/6jl2lbqMDrxEQ/giphy.gif"
]

module.exports = (robot) ->
  # Match `/spacecat` or `/spacecat me`
  robot.respond /spacecat( me)?$/i, (msg) ->
    msg.send msg.random cats

  # Match `/spacecat bomb`, `/spacecat bomb x5`, or `/spacecat bomb 5`
  robot.respond /spacecat bomb\s*x?(\d+)?/i, (msg) ->
    num = (Number) (msg.match[1] || 3)
    num = 3 if num < 3
    num = 10 if num > 10
    for img in cats.shuffle()[0...num]
      msg.send img
