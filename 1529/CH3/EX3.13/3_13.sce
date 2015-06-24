//Chapter 3, Problem 13
clc
t1=20                       //tempreture in celsius
t2=90                       //tempreture in celsius
R20=200                     //resistance in ohm
a0=0.004                    //coefficient of resistance
R90=(R20*(1+(a0*t2)))/(1+(a0*t1))
printf("Resistance of wire = %.2f ohm",R90)
