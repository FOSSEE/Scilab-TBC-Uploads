clc
clear

//INPUT
t1=308;//temperature of the nitrogen molecule in K
m1=28;//molecular mass of the nitrogen in gm
m2=2;//molecular mass of the hydrogen molecule in gm

//CALCULATIONS
t2=(t1*m2/m1);//temperature of the hydrogen molecule in K
//GIVEN avg.speed of both the molecules are same

//OUTPUT
mprintf('the temperature of the hydrogen molecule is %3.0fK',t2)
