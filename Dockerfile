# dockerHubから持ってくるImageの指定
FROM node:16.14.2-alpine 
# ｛WORKDIR｝docker内に入った時の初期パスの指定
# →docker-compose で指定しているので必要ない
# WORKDIR /app
# ｛COPY｝ ローカル側のファイルをdocker内にコピーする
# →docker-compose で指定しているので必要ない
# COPY app .
# {EXPOSE} 　コンテナの使用ポート指定
# →docker-compose で指定しているので必要ない
# EXPOSE 3000
# コンテナが勝手に終了してしまわないようにする設定
ENV CI=true