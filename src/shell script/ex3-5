#!/bin/bash

# 내부 함수 정의
run_linux_command() {
  # 첫 번째 인자로 받은 명령어와 나머지 인자를 조합하여 실행
  command="$1"
  shift
  options="$@"
  
  # 명령어 실행
  $command $options
}

# 사용자로부터 입력 받을 리눅스 명령어와 옵션
echo "리눅스 명령어와 옵션을 입력하세요:"
read user_input

# 입력 받은 내용을 공백을 기준으로 명령어와 옵션으로 분리
IFS=' ' read -r -a command_array <<< "$user_input"

# 내부 함수 실행
run_linux_command "${command_array[@]}"
