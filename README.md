# MosP-Docker-Compose


## Description

 es-mindさんの配布している勤怠管理MosPパッケージを参照し、さくっとDockerで動かせるようにしました。
 
 ref: [https://github.com/es-mind]

## Installation

Docker composeの動く環境にgit cloneで展開しコンテナを起動します。

```
docker compose up -d
```

※以下は、localhostにDockerサーバーがある場合を想定して説明していますので、ご自身の環境に合わせて読み替えて作業してください。

1. [http://localhost:8080/time4/pub/common/html/setup.html]を開き、データベースの設定を行います。
なお、データベースの指定画面ではサーバにmosp-dbを指定します。

2. 1.が終わると、mosp用のデータベース作成画面が表示されるので、DB、ユーザー、パスワードに任意の値を指定します。

3. 2.の作業が済んだら、[http://localhost:8080/time4/] でログインします。初回ログイン時は初期ユーザーのIDとパスワードを設定するように求められるので、適宜設定をしてください。

## 事前確認

TomcatとMOSPはいずれも、バージョン更新に伴ってDockerfileで参照している配布パッケージがリンク切れを起こす可能性があるので、Dockerfile内のTOMCAT_VERSION、MOSP_VERSIONを適宜編集してください。
