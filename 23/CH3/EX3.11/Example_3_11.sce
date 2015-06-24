clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 3.11
//Caption : Program to Find Pressure generated for ammonia

//Given Values
T=338.15;//Temp=338.15K(65`C)
Vt=0.03;//Volume=0.03m^3
R=0.08314;
m=0.5;//mass in Kg
M=17.02;//Molecular Mass
V=Vt/(m/M);// n=m/M(moles)

//(a)
//By Ideal-gas equation,
P=approx(R*T/V,2);//in bar
disp('(a)By Ideal-gas equation')
disp('bar',P,'Pressure is ')

//(b)
//A generalized correlation
Tc=405.7;//App B
Tr=T/Tc;
Pc=112.8;//App B
B0=0.083-(0.422/(Tr^1.6));//Eqn (3.61)
B1=0.139-(0.172/(Tr^4.2));//Eqn (3.62)
//Substituting in eq(3.59)
w=0.253;
K=B0+(w*B1);//K=BPc/RTc
B=K*R*Tc/Pc;//m^3 kmol^-1
//solving eq.(3.37)
P=approx(R*T/(V-B),2);
disp('(b)A generalized Correlation')
disp('bar',P,'Pressure is ')

//End