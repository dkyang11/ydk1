#!/bin/bash

# 파일 경로 지정
db_file="DB.txt"

# 사용자로부터 검색할 이름 입력 받기
search_name="$1"

# DB.txt 파일이 존재하는지 확인
if [ ! -e "$db_file" ]; then
  echo "DB 파일이 존재하지 않습니다."
  exit 1
fi

# 이름으로 검색하여 정보 출력
search_result=$(grep "$search_name" "$db_file")

# 결과가 없으면 메시지 출력
if [ -z "$search_result" ]; then
  echo "검색된 결과가 없습니다."
else
  echo "검색 결과: $search_result"
fi
