clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 3.10
//Caption : Program To Find Pressure generated for methane

//Given Values
T=323.15;//Temp=323.15K(50`C)
V=0.125;//Volume=0.125m^3
R=0.08314;

//(a)
//By Ideal-gas equation,
P=approx(R*T/V,1);//in bar
disp('(a)By Ideal-gas equation')
disp('bar',P,'Pressure is ')

//(b)
//for Redlich/Kwong equation
Tc=190.6;//App B
Tr=T/Tc;
si=0.42748;
omega=0.08664;
Pc=45.99;//App B
a=approx(si*((Tr^(-0.5))*(R^2)*(Tc^2))/Pc,3)//Eqn (3.42)Units of a(T) bar m^6
b=approx(omega*R*Tc/Pc,5)//Eqn (3.43)Units of b m^3
//Using eqn (3.41)
//P=RT/(V-b)-a(T)/(V+Eb)(V+~b),E->epsilon,~->sigma
epsilon=0;
sigma=1;
P=approx(((R*T/(V-b))-(a/((V+(epsilon*b))*(V+(sigma*b))))),2);
disp('(b)for Redlich/Kwong equation')
disp('bar',P,'Pressure is ')

//(c)
//A generalized Correlation
Z0=0.887;//from Table E.3 and E.4
Z1=0.258;//from Table E.3 and E.4
w=0.012;
Z=Z0+(w*Z1);
P=approx(Z*R*T/V,1);//bar
disp('(c)A generalized Correlation')
disp('bar',P,'Pressure is ')

//End