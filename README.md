# サンプルアプリケーション

[![backend](https://github.com/clerk1983/github-action/actions/workflows/backend.yaml/badge.svg)](https://github.com/clerk1983/github-action/actions/workflows/backend.yaml)

静的なフロントエンドと Web API から成る、足し算アプリケーションです。

## 開発モードでの起動手順

サンプルアプリケーションは、以下の手順で開発モードで起動します。

```console
cd backend/
npm ci
npm run dev
```

起動したら、ブラウザで http://localhost:8080 にアクセスしてください。

Cloud9 の場合は、「Tools」>「Preview」>「Preview Running Application」でプレビューを起動して、「Pop Out Into New Window」でブラウザの別タブでアクセスしてください。

## バックエンドをビルドして実行する手順

バックエンドをビルドして実行する場合は、以下のコマンドを実行してください。

```console
cd backend/
npm ci
npm run build
node dist/index.js
```

## バックエンドサーバー環境構築（NodeJS）

sudo apt-get update
sudo apt-get install -y ca-certificates curl gnupg
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://deb.nodesource.com/gpgkey/nodesource-repo.gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/nodesource.gpg

NODE_MAJOR=16

echo "deb [signed-by=/etc/apt/keyrings/nodesource.gpg] https://deb.nodesource.com/node_$NODE_MAJOR.x nodistro main" | sudo tee /etc/apt/sources.list.d/nodesource.list

sudo apt-get update
sudo apt-get install nodejs -y

### プロセス・ポート確認

プロセス確認

```console
ps aux
```

```console
pstree -p
```

ポート確認

```console
sudo ss -antup
```

### systemd によるアプリケーションの実行

sysytemd への登録・実行

```console
sudo vi /etc/systemd/system/backend.service

sudo systemctl daemon-reload
sudo systemctl start backend

systemctl status backend

sudo systemctl enable backend

```

ログチェック

```console
journalctl -u backend
```

プロセス Kii

```console
sudo ps kill
```
