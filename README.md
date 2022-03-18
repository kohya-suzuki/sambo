# READMEの実験
READMEの画像出力や、記号などの細かな検証していきます。初学者向け。<br>

もくじ

大事なことだけリスト
画像出力はイシューにドラッグ&ドロップでリンク生成。
"#"は見出しになる。
"*"は小見出しの"・"になる。
半角を忘れないように！
改行は半角の＜br＞で。とりあえず"#"以外は行末に片っ端から＜br＞つければ楽。
空白は&NBSP；を小文字で。


# 画像の出力
![penguin300と250](https://user-images.githubusercontent.com/44775152/158930776-ad5529f3-fe63-48a5-a332-26963d16119b.jpg)<br>
↑この画像は
```bash
```bash
![penguin300と250](https://user-images.githubusercontent.com/44775152/158930776-ad5529f3-fe63-48a5-a332-26963d16119b.jpg)
```
という文字列で出来ています。方法は以下。<br>

①リポジトリの新しいIssuesを作って、そこへ画像をドラッグ&ドロップし、自動で生成された画像のアドレスをコピー。<br>
②それをローカルのREADMEファイルへ貼り付けてリモートリポジトリへpushする。これで画像をREADMEに出力できます。<br>
少し外道っぽいやり方..って思ったんですが、主流(?)のようです。<br>
他にも方法はあるようですが、ややこしく、管理もずさんになりそうなのでこの方法がおすすめ。<br>
画像本体をimageフォルダなどへ入れる必要がありません。コードそのものが画像を作り出します。とても楽です。<br>
* 画像のサイズを指定するには<br>

```bash
```bash
↓この書き方では画像が出力もされない。
<img src="![penguin300と250](https://user-images.githubusercontent.com/44775152/158930776-ad5529f3-fe63-48a5-a332-26963d16119b.jpg)" width="30px">
↓これも同じ。
<img src="(https://user-images.githubusercontent.com/44775152/158930776-ad5529f3-fe63-48a5-a332-26963d16119b.jpg)" width="50px">
↓これならOK！
<img src="https://user-images.githubusercontent.com/44775152/158930776-ad5529f3-fe63-48a5-a332-26963d16119b.jpg" width="100px">
```
<img src="https://user-images.githubusercontent.com/44775152/158930776-ad5529f3-fe63-48a5-a332-26963d16119b.jpg" width="100px"><br>
小さく表示できました！<br>
<br>
補足ですが、生成した画像用のコードは""で囲っても、''で囲っても、画像として出力されてしまいます。<br>

# "#"の意味
↑こんなふうに、大きな見出しになります。<br>
問答無用で長ーい線も入ってくるよ<br>

# "*"の意味
* ←このように、"*"は"・"に変換されます。<br>
* "*"と"・"はどう違うんですか？↓答え<br>
* ・<br>
<br>
* "*"に関しては、文末に改行を意味する<>付きのbrを入れていないと直下にある文も後ろに繋がってしまいます。<br>
* ＜br＞なし
だから繋がってる
* ＜br＞あり<br>
だから繋がらない<br>

# 空白行はどうなる？
↓この下に2行空白行を入れたまま、pushしてます。<br>


↓この下に4行空白行を入れたまま、pushしてます。<br>




↑それぞれに違いはなく、空行は無視され詰められます。<br>



* "-"を連打してみる<br>
-------------------------------------------
区切り線に変換されました。<br>
* "_"を連打してみる<br>
___________________________________________
区切り線に変換されました。<br>

* "="を連打してみる<br>

===========================================
変換はなく、自動で隣に文字が並んでしまいました。<br>

# 注意と例文
"#"や"*"いずれも、直後に半角スペースを入れないと、機能してくれません。<br>
また「行の先頭に書いたもの」でなければ機能しません。<br>
以下は見辛いですが、例を挙げます。<br>

# ←直後に半角入れてます。私は見出しではありません。実験体です。
#←直後に半角入れてません。<br>

* ←直後に半角入れてます。<br>
*←直後に半角入れてません。＜br＞以外は何もしてないのに、小見出しに従って強制インデントされてます。<br>



北海道新潟#茨城福島岐阜大阪# <br>
北海道新潟*茨城福島岐阜大阪* <br>
↑間と行末に入れた"*"が消滅した。

* "井"は"#"の代わりになるんですか？↓答え<br>
井<br>
ならな井。

* 色々書いてみる<br>
"#" '#'<br>
'#' "#"<br>
"*" '*'<br>
'*' "*"<br>
(* ○ v ○)<br>
(# x o x)<br>
どれも大きな変換はされませんでした。
* ↓は順番に"*"を1コ、2コ、３コ、４コと半角を挟みながら増やしてます。<br>
* <br>
* * <br>
* * * 
* * * * 
↑もはや何だかよくわかりません。・と。に変換されました。<br>
* ↓は順番に"#"を1コ、2コ、３コ、４コと半角を挟みながら増やしてます。<br>
# 
# # 
# # # 
# # # # 
↑２こまでは線に変換されましたが、それ以降は文字として認識されてます。<br>
* 軽くアートにする
|     △ △
|    (・・)  ~
|   ⊂     つ ~
| ◎〜  しし   ~<br>
全然なってない。。<br>
空白スペースと改行がされていない。<br>
空白文字である＆NBSP;と、改行文字である＜br＞（どちらも半角に変換してください）をしてやってみる<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;△&nbsp;△<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(・・)&nbsp;&nbsp;~<br>
|&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;⊂&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;つ&nbsp;~<br>
|&nbsp;◎〜&nbsp;&nbsp;しし&nbsp;&nbsp;&nbsp;~<br>
ギリなんとかなる。環境によっては崩れます。<br>
意図せず「打ち消し線」が発動していて困惑。。<br>
# 他の記号は機能する？
* "+"の場合↓<br>
+ 

* "-"の場合↓<br>
- 

* "{}"の場合↓<br>
{} 

* "[]"の場合↓<br>
[] 

* "%"の場合↓<br>
% 

* "$"の場合↓<br>
$ 

"$"を書くと、もう一度"$"を書くまでそれ以降の記号が機能を失うような挙動があるっぽい。。<br>
調査しきれてませんが、注意してください。<br>

* その他<br>
「&,¥,\,?, <>」あたりは特に大きな挙動が認められませんでした。<br>
& 
¥ 
\ 
? 
<> 
↑１文字ずつEnterで改行してますが、全部横並びになりました。
# 改行したい
結論は「行末で半角スペースを２つ入れる」か「＜br＞を入れる」です。
* 半角２つパターン↓<br>
あああああああ  
* br入れるパターン↓<br>
あああああああ<br>
どちらも改行できました！
可読性の観点から、スペース２つ入れても気付けないので、＜br＞をおすすめします。<br>
* 改行４連続↓<br>
<br>
<br>
<br>
<br>
無事４行分改行できています。
* ただ思考停止でEnterを押して改行しても、Gitで見た時には改行されず、連続して詰めて書かれてしまいます。<br>
一応、正規表現などで改行を試みてみる。<br>
(/n)
"</n>"
"<br>"
\n 
\r\n
\r
\n|\r\n|\r
↑１文字ずつEnterで改行してますが、何してもREADMEとしては改行されません。<br>

# コードブロックの作り方
｀｀｀bash<br>
&nbsp;&nbsp;&nbsp;&nbsp;文字入れる<br>
｀｀｀<br>
で囲えばコードブロックになります。半角に変換してください。<br>
# さいごに
* ここまで見てもよくわかりませんの人のために、このページ全体のコードを貼り付けておきます。


```bash
```bash
コード春。
``
以上！解散！

