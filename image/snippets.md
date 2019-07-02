### 폴더내 이미지 포맷 일괄 변환

png 확장자로 된 폴더내 이미지 모두 gif로 일괄 변환함

```bash
# require: imagemagick
mogrify    -format gif   *.png
```


### 폴더내 이미지를 비율로 일괄 리사이징

png 확장자로 된 폴더내 이미지 모두 50% 크기로 리사이징함

```bash
# require: imagemagick
mogrify -resize 50% *.png
```

### 폴더내 이미지를 일정한 크기로 일괄 리사이징

```bash
# require: imagemagick
mogrify -resize 256x256 *.jpg
```
