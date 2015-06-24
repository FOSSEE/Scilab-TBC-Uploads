clear;
clc;
close;
disp("Example2.8")
Tt1=50+460 //Converting the inlet temp. to the absolute scale i.e. in degree R
M1=0.5 //Initial inlet Mach no.
pt1=14.7 //Units in psia
gm=1.4 //gamma
R=53.34 //units in ft.lbf/lbm.degree R
Tcr=Tt1/0.69136 
cp=gm*R/(gm-1)
//using energy equation:
Q1cr=cp*(Tcr-Tt1)
//since heat flux is 1.2(Q1cr).
q=1.2*Q1cr
Tt1cr1=Tt1+(Q1cr'/cp) //new exit total temp.
z=Tt1/Tt1cr1
M2=0.473
function [f]=f(M)
    f=M/(1+((gm-1)/2)*M^2)^((gm+1)/(2*(gm-1)))
endfunction
sm=((f(M1)-f(M2))/f(M1))*100 //sm=The % spilled flow at the inlet
disp(M2,"(a)The new inlet Mach no. M2:")
disp(sm,"(b)The % spilled flow at the inlet:")
