# dmarc-visualizer

## 概要

DMARCの結果を解析して可視化するためのソフトウェアです。

## 使用方法

https://engineer.crowdworks.jp/entry/dmarc-visualizer
上記を参考に、Apps Scriptを実行します
コードはリポジトリ内にある`app_script`を使用します

Google Driveのdmarcフォルダにメールの添付ファイルがまとまっているので、ローカルのダウンロードフォルダにダウンロードします

```bash
make copy-files FOLDER=output_20xx-xx-xx_to_20xx-xx-xx
make start
```

http://localhost:3000/
にアクセスして、Grafanaのダッシュボードを確認します


# original
Analyse and visualize DMARC results using open-source tools.

* [parsedmarc](https://github.com/domainaware/parsedmarc) for parsing DMARC reports,
* [Elasticsearch](https://www.elastic.co/) to store aggregated data.
* [Grafana](https://grafana.com/) to visualize the aggregated reports.

See the full blog post with instructions at https://debricked.com/blog/2020/05/14/analyse-and-visualize-dmarc-results-using-open-source-tools/.

## Screenshot

![Screenshot of Grafana dashboard](/big_screenshot.png?raw=true)
