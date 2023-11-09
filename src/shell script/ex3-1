#!/bin/bash

if [ "$#" -ne 1 ]; then
  echo "사용법: $0 <숫자>"
  exit 1
fi

number="$1"

if [[ $number =~ ^[0-9]+$ ]]; then
  for ((i=1; i<=$number; i++)); do
    echo "Hello, World!"
  done
else
  echo "올바른 숫자를 입력해주세요."
fi
