//Solutions to Problems In applied mechanics
//A N Gobby
clear all;
clc
//initialisation of variables
b=3*6^3/12//in^4
d=b+3*6*6^2//in^4
b2=%pi*2^4/64//in^4
h=b2+%pi*1^2*6^2//in^4
//CALCULATIONS
P=d-h//in^4
//RESULTS
printf('the rectangular plate with circular hole=% f in^4',P)
