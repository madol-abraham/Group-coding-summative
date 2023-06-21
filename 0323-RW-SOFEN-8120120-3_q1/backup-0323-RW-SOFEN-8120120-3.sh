#!/usr/bin/env bash
# This script backup the directory created 

HOST="a0dfc11ba139.a982e858.alu-cod.online"
USERNAME="a0dfc11ba139"
PASSWORD="899c79fc532cd0591af1"
Location=:/home/sftp-student/03033/summative

sshpass -p $PASSWORD scp -r $SOURCE $USER@$HOST:$DESTINATION
