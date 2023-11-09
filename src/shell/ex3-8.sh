#!/bin/bash

# 파일 경로 지정
db_file="DB.txt"

# 사용자로부터 이름과 전화번호 입력 받기
name="$1"
phone_number="$2"

# DB.txt 파일이 존재하는지 확인하고 없으면 생성
if [ ! -e "$db_file" ]; then
  touch "$db_file"
fi

# 이름과 전화번호를 DB.txt에 추가
echo "$name $phone_number" >> "$db_file"

