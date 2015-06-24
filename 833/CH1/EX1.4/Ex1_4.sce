//Caption:Calculate (a) equivalent resistance and reactance of low voltage side in terms of high voltage side (b) equivalent resistance and reactance of high voltage side in terms of low voltage side (c) total resistance and reactance of transformer in terms of high voltage side (d) total resistance and reactance of transformer in terms of low voltage side 
//Exa:1.4
clc;
clear;
close;
V_1=2200//Primary side voltage(in volt)
V_2=220//secondary side voltage(in volt)
f=50//frequency(in hertz)
r_1=1.25//Primary side resistance(in ohm)
x_1=4//Primary side reactance(in ohm)
r_2=0.04//Secondary side resistance(in ohm)
x_2=0.15//Secondary side reactance(in ohm)
n=V_1/V_2
R_2=(n^2)*r_2
disp(R_2,'(a)equivalent resistance of low voltage side in terms of high voltage side=')
X_2=(n^2)*x_2
disp(X_2,'equivalent reactance of low voltage side in terms of high voltage side=')
R_1=r_1/(n^2)
disp(R_1,'(b)equivalent resistance of high voltage side in terms of low voltage side =')
X_1=x_1/(n^2)
disp(X_1,'equivalent reactance of high voltage side in terms of low voltage side =')
R_t=r_1+R_2
disp(R_t,'(c)total resistance of transformer in terms of high voltage side=')
X_t=x_1+X_2
disp(X_t,'total reactance of transformer in terms of high voltage side=')
R_e=r_2+R_1
disp(R_e,'(d)total resistance of transformer in terms of low voltage side=')
X_e=x_2+X_1
disp(X_e,'total reactance of transformer in terms of low voltage side=')