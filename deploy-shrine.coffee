# Description:
#   deploy-shrine API
#
# Notes:
#   Use deploy-shrine API reference http://macotasu.hatenablog.jp/entry/2014/11/13/214337
#
# Command:
#   hubot deploy?
module.exports = (robot) ->
    robot.respond /deploy\?/i, (msg) ->
        msg.http("https://deploy-shrine.herokuapp.com/api/pray")
            .get() (err, res, body) ->
                if err
                    msg.send "なんかエラー"
                else
                    msg.send JSON.parse(body).explanation
