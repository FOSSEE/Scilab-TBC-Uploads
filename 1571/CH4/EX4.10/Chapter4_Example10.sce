clc
clear

//INPUT
t1=273;//temperature of the hydrogen molecule at n.t.p in K
//rms value of hydrogen molecule is double to its rms value at n.t.p, so 3rt/m=4(3rt/m)

//CALCULATIONS
t2=4*t1;//temperature of the hydrogen molecule in K

//OUTPUT
mprintf('the temperature of the hydrogen molecule is %3f',t2)
