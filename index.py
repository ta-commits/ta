from google.cloud import vision

#image.jpegを開いて読み込む
with open('/Users/ta/Documents/vision-ai-test/image.jpeg', 'rb') as image_file:
    content = image_file.read()

#vision APIが使える画像データにする
image = vision.Image(content=content)

#ImageAnnotatorClientのインスタンスを生成
annotator_client = vision.ImageAnnotatorClient()

response_data = annotator_client.label_detection(image=image)
labels = response_data.label_annotations

print('-----result-----')
for label in labels:
    print(label.description, ':', round(label.score * 100, 2), '%')
print('-----result-----')