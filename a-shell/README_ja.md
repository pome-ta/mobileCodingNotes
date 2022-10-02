# a-shell: 複数のウィンドウを備えた iOS 用端末

<p align="center">
<img src="https://img.shields.io/badge/Platform-iOS%2013.0+-lightgrey.svg" alt="Platform: iOS">
<a href="https://twitter.com/a_Shell_iOS"><img src="https://img.shields.io/badge/Twitter-@a__Shell__iOS-blue.svg?style=flat" alt="Twitter"/></a>
<a href="https://discord.gg/cvYnZm69Gy"><img src="https://img.shields.io/discord/935519150305050644?color=5865f2&label=Discord&style=flat" alt="Discord"/></a>
</p>

このプロジェクトの目標は、iOS でシンプルな Unix ライクな端末を提供することです。コマンドの解釈に [ios_system](https://github.com/holzschu/ios_system/) を使用し、[ios_system](https://github.com/holzschu/ios_system/) エコシステム (nslookup、 whois、python3、lua、pdflatex、lualatex...)

このプロジェクトの目標は、iOS でシンプルな Unix ライクな端末を提供することです。コマンドの解釈に [ios_system](https://github.com/holzschu/ios_system/) を使用し、[ios_system](https://github.com/holzschu/ios_system/) エコシステム (nslookup、whois、python3、lua、pdflatex、lualatex...) からのすべてのコマンドが含まれています。

このプロジェクトでは、iPadOS 13 の機能を使用して、複数のウィンドウを作成および管理します。各ウィンドウには、独自のコンテキスト、外観、コマンド履歴、および現在のディレクトリがあります。 `newWindow` は新しいウィンドウを開き、`exit` は現在のウィンドウを閉じます。

ヘルプが必要な場合は、コマンド ラインで「help」と入力します。 「help -l」は、使用可能なすべてのコマンドを一覧表示します。 `ヘルプ -l | grep command` は、お気に入りのコマンドが既にインストールされているかどうかを教えてくれます。

`config` を使用して a-Shell の外観を変更できます。フォント、フォント サイズ、背景色、テキストの色、カーソルの色を変更できます。各ウィンドウは独自の外観を持つことができます。 `config -p` は、現在のウィンドウの設定を永続的なものにし、それが将来のすべてのウィンドウに使用されます。

新しいウィンドウを開くと、a-Shell はファイル `.profile` が存在する場合はそれを実行します。このメカニズムを使用して、さらにカスタマイズできます。カスタム環境変数を使用するか、一時ファイルをクリーンアップします。

## AppStore

a-Shell が [AppStore で利用できる](https://holzschu.github.io/a-Shell_iOS) ようになりました。

## それをコンパイルする方法は？

プロジェクトを自分でコンパイルする場合は、次の手順が必要です:

- プロジェクト全体とそのサブモジュールをダウンロードします: `git submodule update --init --recursive`
- すべての xcFrameworks をダウンロード: `downloadFrameworks.sh`
    - これにより、標準の Apple フレームワーク (`xcfs/.build/artefacts/xcfs` 内、チェックサム コントロール付き) と Python フレームワークおよびモジュール (`cpython/XcFrameworsk` および `cpython/Library` 内) の両方がダウンロードされます
    - *非常に*やる気がある場合は、Python フレームワークを再コンパイルできます。:
        - Xcode コマンド ライン ツールが必要です (まだ持っていない場合): `sudo xcode-select --install`
        - また、macOS 用の OpenSSL ライブラリ (libssl および libcrypto)、XQuartz (freetype)、および Node.js (npm) も必要です (iOS およびシミュレーター用のバージョンを提供しています)。
        - ディレクトリを `cpython` に変更: `cd cpython`
        - Python 3.9 と関連するすべてのライブラリ/フレームワークをビルドする: `sh ./downloadAndCompile.sh` (このステップは、2GHz i5 MBP、YMMV で 30 分以上かかります)。

a-Shell は、必要に応じてデバイスとシミュレーターで実行されるようになりました。

Python 3.9 は iOS 14 SDK でのみ使用できる関数を使用するため、最小 iOS バージョンを 14.0 に設定しました。また、バイナリのサイズも縮小されるため、`ios_system` と他のフレームワークは同じ設定になります。 iOS 13 デバイスで実行する必要がある場合は、ほとんどのフレームワークを再コンパイルする必要があります。

## Home directory

iOS では、`~`ディレクトリに書き込むことはできず、`~/Documents/`、`~/Library/`、`~/tmp`にしか書き込めません。ほとんどの Unix プログラムは、設定ファイルが `$HOME` にあると想定しています。

そのため、a-Shell はいくつかの環境変数を変更して、それらが `~/Documents` を指すようにします。それらを表示するには、「env」と入力します。

ほとんどの構成ファイル (Python パッケージ、TeX ファイル、Clang SDK...) は `~/Library` にあります。

## Sandbox and Bookmarks

a-Shell は iOS 13 の機能を使用して、他のアプリ サンドボックス内のディレクトリにアクセスします。 `pickFolder` と入力して、別のアプリ内のディレクトリにアクセスします。ディレクトリを選択したら、ここで必要なことはほとんど何でもできるので注意してください。

`pickFolder` でアクセスするディレクトリはすべてブックマークされているので、後で  `pickFolder` なしで戻ることができます。 `bookmark` で現在のディレクトリをブックマークすることもできます。 `showmarks` は既存のすべてのブックマークを一覧表示し、`jump mark` は現在のディレクトリをこの特定のブックマークに変更し、`renamemark` は特定のブックマークの名前を変更し、`deletemark` はブックマークを削除します。

設定のユーザー設定可能なオプションでは、コマンド `s`、`g`、`l`、`r`、`d` を代わりに、または同様に使用できます。

迷った場合、`cd` は常に `~/Documents/` に戻してくれます。 `cd -` で前のディレクトリに移動します。

## Shortcuts

a-Shell は Apple ショートカットと互換性があり、ユーザーはシェルを完全に制御できます。 a-Shell コマンドを使用して、ファイルをダウンロード、処理、およびリリースするための複雑なショートカットを作成できます。ショートカットは 3 つ:

- コマンドのリストを取得し、それらを順番に実行する `Execute Command` 。入力は、ファイルまたはテキスト ノードにすることもできます。この場合、ノード内のコマンドが実行されます。
- `Put File` と `Get File` は、a-Shell との間でファイルを転送するために使用されます。

ショートカットは、「拡張機能内」または「アプリ内」のいずれかで実行できます。 「拡張機能」とは、ショートカットが軽量バージョンのアプリで実行され、グラフィカル ユーザー インターフェイスがないことを意味します。構成ファイルやシステム ライブラリを必要としない軽いコマンド (mkdir、nslookup、whois、touch、cat、echo...) に適しています。 「アプリ内」はメインアプリを開いてショートカットを実行します。すべてのコマンドにアクセスできますが、時間がかかります。ショートカットがアプリを開いたら、コマンド `open Shortcuts://` を呼び出してショートカット アプリに戻ることができます。デフォルトの動作は、コマンドの内容に基づいて、可能な限り "in Extension" でコマンドを実行しようとすることです。特定のショートカットを「アプリ内(in App)」または「拡張機能内(in Extension)」で実行するように強制できますが、常に機能するとは限らないという警告が表示されます。

両方の種類のショートカットは、デフォルトで同じ特定のディレクトリ `$SHORTCUTS` で実行されます。もちろん、コマンド `cd` や `jump` をショートカットで実行できるので、ほとんどどこへでも行けます。

## Programming / add more commands:

a-Shell には、Python、Lua、JS、C、C++、TeX などのいくつかのプログラミング言語がインストールされています。

C および C++ の場合、プログラムを `clang program.c` でコンパイルすると、webAssembly ファイルが生成されます。その後、 `wasm a.out` で実行できます。複数のオブジェクトファイルをリンクしたり、 `ar` でスタティックライブラリを作ったりすることもできます。プログラムに満足したら、それを `$PATH` 内のディレクトリ (例: `~/Documents/bin` ) に移動します。 ) して名前を `program.wasm` に変更すると、コマンドラインで `program` と入力すると実行されます。

専用の [WASI-sdk](https://github.com/holzschu/wasi-sdk) を使用してメイン コンピューターでプログラムをクロスコンパイルし、WebAssembly ファイルを iPad または iPhone に転送することもできます。

a-Shell に固有のプリコンパイル済み WebAssembly コマンドは、https://github.com/holzschu/a-Shell-commands から入手できます。これらには、`zip`、`unzip`、`xz`、`ffmpeg` が含まれます。それらをダウンロードして `$PATH` に配置することで、iPad にインストールできます。

WebAssembly には制限があります: ソケット、フォーク、インタラクティブなユーザー入力 (`command | wasm program.wasm` を使用した他のコマンドからのパイプ入力は正常に機能します)。

Python の場合、`pip install packagename` を使用して追加のパッケージをインストールできますが、それらが純粋な Python である場合に限ります。 C コンパイラは、Python で使用できる動的ライブラリをまだ生成できません。

TeX ファイルはデフォルトではインストールされません。 TeX コマンドを入力すると、システムはそれらをダウンロードするように求めます。 LuaTeX ファイルと同じです。

## VoiceOver

設定で VoiceOver を有効にすると、a-Shell は VoiceOver で動作します。コマンドを入力すると読み上げられ、結果が読み上げられ、指で画面を読み上げることができます...
