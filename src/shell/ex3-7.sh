#!/bin/bash

# 현재 디렉토리 기억
current_dir=$(pwd)

# 사용자로부터 폴더 이름 입력 받기
folder_name="$1"

# 폴더 존재 여부 확인 및 생성
if [ -d "$folder_name" ]; then
  echo "폴더 '$folder_name'이 이미 존재합니다."
else
  mkdir "$folder_name"

fi

# 5개 이상의 파일 생성
for ((i=0; i<5; i++)); do
  echo "내용 $i" > "$current_dir/$folder_name/file$i.txt"
done

# files 폴더에 파일 폴더들 생성하고 파일 이동
for ((i=0; i<5; i++)); do
  file_folder="$current_dir/files/file$i"
  mkdir "$file_folder"
  mv "$current_dir/$folder_name/file$i.txt" "$file_folder/"
done


# 현재 디렉토리를 원래대로 돌려놓기
cd "$current_dir"
