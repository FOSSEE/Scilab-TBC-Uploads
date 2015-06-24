clc
//initialisation of variables
w=20//lb
t=320//degree C
t1=22//Degree C
w1=0.0807//lb
A=0.03901//AH
W=0.07469//AH
g=5.2//A
Q=W-A//A
//CALCULATIONS
H=(g*0.625)/(Q)//ft
//RESULTS
printf('weight of equal column of external air=% f ft',H)
