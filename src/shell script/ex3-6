#!/bin/bash

# 사용자로부터 폴더 이름 입력 받기
folder_name="$1"

# 폴더 존재 여부 확인 및 생성
if [ -d "$folder_name" ]; then
  echo "폴더 '$folder_name'이 이미 존재합니다."
else
  mkdir "$folder_name"
  
fi

# 5개의 파일 생성
for ((i=0; i<5; i++)); do
  echo "내용 $i" > "$folder_name/file$i.txt"
done

# 폴더 내의 파일들을 tar로 압축
tar -czf "${folder_name}.tar.gz" -C "$folder_name" .

# 파일 목록 출력
echo "$(ls "$folder_name") ${folder_name}.tar"

# 새로운 폴더 생성하여 압축 해제
new_folder_name="${folder_name}_extracted"
mkdir "$new_folder_name"
tar -xzf "${folder_name}.tar.gz" -C "$new_folder_name"

