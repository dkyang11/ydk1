#!/bin/bash

echo "리눅스가 재미있나요 ? (yes / no)"
read answer

case $answer in
  [Yy]*)
    echo "yes"
    ;;
  [Nn]*)
    echo "no"
    ;;
  *)
    echo "yes나 no로 입력해 주세요."
    ;;
esac

#답변의 조건 Y,y --> yes/N,n --> no