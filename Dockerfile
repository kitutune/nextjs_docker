# dockerHubから持ってくるImageの指定
FROM node:16.14.2-alpine 
# docker内に入った時の初期パスの指定
WORKDIR /app
# ローカル側のファイルをdocker内にコピーする
COPY app .
# 　コンテナの使用ポート指定
EXPOSE 3000
# コンテナが勝手に終了してしまわないようにする設定
ENV CI=true