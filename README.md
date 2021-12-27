# word-anomaly-detection

Universal Sentence Encoderと方向データに対する異常検知を組み合わせて、文字列の中に混じった異質な文字列を検出するモデルを作成する。<br>

## Usage

```
docker build -t wordanodetection .
docker run -it --name wordanodetection-1 -p 8889:8889 wordanodetection
```

Open the notebook main_notebook.ipynb in jupyter lab.

