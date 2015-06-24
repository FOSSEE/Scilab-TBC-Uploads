// Example 2.3: to prove
clc;
clear;
close;
Z=1;//assume
n1=1;//orbit 1
n2=2;//orbit 2
n3=3;//orbit 3
e1=((-13.6*Z)/(n1^2));//energy for the first orbit
e2=((-13.6*Z)/(n2^2));//energy for the second orbit
e3=((-13.6*Z)/(n3^2));//energy for the third orbit
e31=e3-e1;//energy emitted by an electron jumping from orbit nuber 3 to orbit nimber 1
e21=e2-e1;//energy emitted by an electron jumping from orbit nuber 2 to orbit nimber 1
re=e31/e21;//ratio of energy
disp(re,"ratio of energy for an electron to jump from orbit 3 to orbi 1 and from orbit 2 to orbit 1 is 32/27")
