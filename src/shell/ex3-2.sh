#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "사용법: $0 <수식>"
  exit 1
fi

expression="$1"

# 사용자 입력에서 숫자와 연산자를 추출
regex="^([0-9]+)([-+])([0-9]+)$"

if [[ "$expression" =~ $regex ]]; then
  num1="${BASH_REMATCH[1]}"
  operator="${BASH_REMATCH[2]}"
  num2="${BASH_REMATCH[3]}"
else
  echo "올바른 수식을 입력해주세요. 예: 1+4 또는 5-2"
  exit 1
fi

# 입력된 값이 숫자인지 확인
if ! [[ "$num1" =~ ^[0-9]+$ ]] || ! [[ "$num2" =~ ^[0-9]+$ ]]; then
  echo "올바른 숫자를 입력해주세요."
  exit 1
fi

# 연산을 수행하고 결과 출력
if [ "$operator" = "+" ]; then
  result=$((num1 + num2))
  echo "$result"
elif [ "$operator" = "-" ]; then
  result=$((num1 - num2))
  echo "$result"
else
  echo "올바른 연산자를 입력해주세요 (+ 또는 -)."
  exit 1
fi
