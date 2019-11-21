#!/usr/bin/env bash
g++ -fopenmp -o main ./main.cpp

./gen 100 100 100 10
echo -e "\ndata generated 100 100 100\n"
./main ./in.txt nooutput 1

./gen 500 500 500 10
echo -e "\ndata generated 500 500 500\n"
./main ./in.txt nooutput 1
./main ./in.txt nooutput 2
./main ./in.txt nooutput 4

./gen 1000 1000 1000 10
echo -e "\ndata generated 1000 1000 1000\n"
./main ./in.txt nooutput 1
./main ./in.txt nooutput 2
./main ./in.txt nooutput 3
./main ./in.txt nooutput 4
./main ./in.txt nooutput 5
./main ./in.txt nooutput 6
./main ./in.txt nooutput 7
./main ./in.txt nooutput 8
./main ./in.txt nooutput 9
./main ./in.txt nooutput 10
./main ./in.txt nooutput 11
./main ./in.txt nooutput 12
./main ./in.txt nooutput 13
./main ./in.txt nooutput 14
./main ./in.txt nooutput 15
./main ./in.txt nooutput 16
./main ./in.txt nooutput 17
./main ./in.txt nooutput 18
./main ./in.txt nooutput 19
./main ./in.txt nooutput 20
./main ./in.txt nooutput 21
./main ./in.txt nooutput 22
./main ./in.txt nooutput 23
./main ./in.txt nooutput 24
./main ./in.txt nooutput 25
./main ./in.txt nooutput 26
./main ./in.txt nooutput 27
./main ./in.txt nooutput 28
./main ./in.txt nooutput 29
./main ./in.txt nooutput 30
./main ./in.txt nooutput 31
./main ./in.txt nooutput 32
./main ./in.txt nooutput 33
./main ./in.txt nooutput 34
./main ./in.txt nooutput 35
./main ./in.txt nooutput 36
./main ./in.txt nooutput 37
./main ./in.txt nooutput 38
./main ./in.txt nooutput 39
./main ./in.txt nooutput 40

./gen 2000 2000 2000 10
echo -e "\ndata generated 2000 2000 2000\n"
./main ./in.txt nooutput 1
./main ./in.txt nooutput 2
./main ./in.txt nooutput 3
./main ./in.txt nooutput 4
./main ./in.txt nooutput 5
./main ./in.txt nooutput 6
./main ./in.txt nooutput 7
./main ./in.txt nooutput 8
./main ./in.txt nooutput 9
./main ./in.txt nooutput 10
./main ./in.txt nooutput 11
./main ./in.txt nooutput 12
./main ./in.txt nooutput 13
./main ./in.txt nooutput 14
./main ./in.txt nooutput 15
./main ./in.txt nooutput 16
./main ./in.txt nooutput 17
./main ./in.txt nooutput 18
./main ./in.txt nooutput 19
./main ./in.txt nooutput 20
./main ./in.txt nooutput 21
./main ./in.txt nooutput 22
./main ./in.txt nooutput 23
./main ./in.txt nooutput 24
./main ./in.txt nooutput 25
./main ./in.txt nooutput 26
./main ./in.txt nooutput 27
./main ./in.txt nooutput 28
./main ./in.txt nooutput 29
./main ./in.txt nooutput 30
./main ./in.txt nooutput 31
./main ./in.txt nooutput 32
./main ./in.txt nooutput 33
./main ./in.txt nooutput 34
./main ./in.txt nooutput 35
./main ./in.txt nooutput 36
./main ./in.txt nooutput 37
./main ./in.txt nooutput 38
./main ./in.txt nooutput 39
./main ./in.txt nooutput 40

./gen 5000 5000 5000 10
echo -e "\ndata generated 5000 5000 5000\n"
./main ./in.txt nooutput 4
./main ./in.txt nooutput 8
./main ./in.txt nooutput 16
./main ./in.txt nooutput 32
./main ./in.txt nooutput 40