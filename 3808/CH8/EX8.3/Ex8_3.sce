//Chapter 08: Advanced Counting Techniques

clc;
clear;

A=int(1000/7)            //set of positive integers not exceeding 1000 and divisible by 7 Note:inferred from Example 2 of Section 4.1
B=int(1000/11)          //set of positive integers not exceeding 1000 and divisible by 11 Note:inferred from Example 2 of Section 4.1
AIB=int(1000/(7*11))                          //set of positive integers not exceeding 1000 and divisible by 7 also 11

AUB=A+B-AIB

mprintf("There are %d positive integers not exceeding 1000 that are divisible by either 7 or 11",AUB)
