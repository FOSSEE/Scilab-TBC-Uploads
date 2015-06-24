//Finding resistance
//Example 2.2(pg. 21)
clc
clear
R20=400// in ohms
k0=0.0038
t=20,T=80//degree C
k1=k0/(1+(k0*t))
R80=R20*{1+k1*(T-t)}
printf('The value of Resistance at 80 degree C is %3.4f ohms',R80)
