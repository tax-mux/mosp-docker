# Mosp

## Description

勤怠管理MospをさくっとDockerで動かせるようにしました。

## Installation

Docker composeの動く環境にgit cloneで展開しコンテナを起動します。

```
docker compose up -d
```

※以下は、localhostにDockerサーバーがある場合を想定して説明しています。

続いて、http://localhost:8080/time4/pub/common/html/setup.html を開き、データベースの設定を行います。

なお、データベースの指定画面ではサーバにmosp-dbを指定します。

設定が終わったら、http://localhost:8080/time4/ でログインします。初回ログイン時は初期ユーザーのIDとパスワードを設定するように求められるので、適宜設定をしてください。

## 事前確認

Tomcatのバージョン更新に伴って、Dockerfileで参照しているTomcatの配布パッケージがリンク切れを起こす可能性があるので、Dockerfile内のTOMCAT_VERSIONを適宜編集してください。
