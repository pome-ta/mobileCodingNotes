# mobileCodingNotes

## a-shell

[holzschu/a-shell: A terminal for iOS, with multiple windows](https://github.com/holzschu/a-shell)

### `pkg` コマンド

```
~/Documents/bin
```

bin ディレクトリがない場合は作成する

`~/Documents` 上で

```
mkdir bin
```

```
pkg install git
```

入ったかの確認は

```
pkg list
```



## iSH

[ish-app/ish: Linux shell for iOS](https://github.com/ish-app/ish)

### Setting

インストールとかdotfiles とか

```
apk update
```

```
apk upgrade
```

[Running in background · ish-app/ish Wiki](https://github.com/ish-app/ish/wiki/Running-in-background)

```
cat /dev/location > /dev/null &
```


#### タイムゾーン

```
apk add tzdata
```


```
cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
```

#### `apk info`

```
musl
alpine-baselayout
alpine-keys
apk-tools
scanelf
musl-utils
libc-utils
busybox
libcrypto1.1
libssl1.1
ca-certificates-bundle
libretls
ssl_client
zlib
tzdata
```

#### `add` したもの

- zsh
- python3
- py3-pip
- git
- vim
- nodejs
- npm
- neovim


node : `v14.20.0` 

動かない、v12 だと動いてた記事がある

npm もだめかもね

#### zsh にする

dotfile 書く

```
apk add zsh
```

