#!/bin/bash

if [ "$#" -ne 2 ]; then
  echo "사용법: $0 <몸무게> <신장>"
  exit 1
fi

weight="$1"
height="$2"

# 입력된 값이 숫자인지 확인
if ! [[ "$weight" =~ ^[0-9]+([.][0-9]+)?$ && "$height" =~ ^[0-9]+([.][0-9]+)?$ ]]; then
  echo "올바른 숫자를 입력해주세요."
  exit 1
fi

# BMI 계산
bmi=$(awk "BEGIN { printf \"%.2f\", $weight / (($height / 100) * ($height / 100)) }")

# 비만 여부 판단
if (( $(awk "BEGIN { print ($bmi <= 18.5) }") )); then
  echo "저체중입니다."
elif (( $(awk "BEGIN { print ($bmi < 23) }") )); then
  echo "정상 체중입니다."
else
  echo "비만입니다."
fi
