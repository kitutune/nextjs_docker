環境　Ubuntu 20.04
localのVscodeに入っている拡張機能(3つだけ
![image](https://user-images.githubusercontent.com/79749395/181904636-f025fba9-ddc3-416f-b64c-979488b5bd66.png)



# nextjs_docker
dockerで起動する用　composeに追加で書き込みし、他のコンテナとつなげる
1. gitclone
> git clone git@github.com:kitutune/nextjs_docker.git
2. プロジェクト内に移動
> cd nextjs_docker/
3. docker-compose で　build
> docker-compose build
4. docker-composeでコンテナ起動 (-dは端末でそのままコマンド打てるようにするため　無ければ他のターミナルを起動する必要あり
> docker-compose up -d
5. （無視してもいい）コンテナの中に入る(標準入力？　端末で操作できる）
> docker exec -it  next sh
6. 5の手順無視でコンテナ内でvscode起動するなら (.は現在のフォルダ位置
> cd app/fe_next_app/
> code .
7. vscodeの左下　>< ←のようなマークからReopen in Container　で開く
![image](https://user-images.githubusercontent.com/79749395/181904597-0fd23048-8eec-49a8-85f7-eaab7e444380.png)
8. コンテナ内で端末開いてnodemoduleないから追加するためにyarn
> yarn 
9. Next.js起動
> yarn dev
![image](https://user-images.githubusercontent.com/79749395/181904803-9f2e3c46-82b4-4978-a90f-4e21640996f8.png)
