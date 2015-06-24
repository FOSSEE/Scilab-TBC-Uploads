clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

//Example 6.4
//Caption : Program to Find the Residual Enthalpy and Residual Entropy

//Given Values and values from Table(3.1)
T=500;//[K]
R=8.314;
Tc=425.1;//[K]
P=50;//[bar]
Pc=37.96;//[bar]
omega=0.08664;
si=0.4636;
Tr=T/Tc;
Pr=P/Pc;
alpha_Tr=Tr^(-0.5);//a(Tr)
//Using Eqn(3.50)
Beta=omega*(Pr/Tr);
//Using Eqn(3.51)
q=si*alpha_Tr/(omega*(Tr^1.5));

//using eqn(3.49)
//Z=1+beta-q*beta*((Z-beta)/((Z+(epsilon*beta))*(Z+(sigma*beta)))

//calculation of Z
Z=1;//Initial
a=Z;
for i=0:10
  b=1+Beta-(q*Beta*((a-Beta)/(a*(a+Beta))));
  if((b-a)==0.0001)
     break;
   end
   a=b;
   i=i+1;
end
Z=approx(b,3)

//Using Eqn(6.64) and eqn(6.65)
//(Hr/RT)=Z-1+[(d ln(alpha_Tr)/d ln Tr)-1]qI   I=ln((Z+beta)/Z)  d ln(alpha_Tr)/d ln Tr=-0.5
//Sr/R)=ln(Z-beta)+[d ln(alpha_Tr)/d ln Tr]qI  I=ln((Z+beta)/Z)  d ln(alpha_Tr)/d ln Tr=-0.5
I=log((Z+Beta)/Z);
Hr=approx(R*T*(Z-1+((-0.5-1)*q*I)),0);
Sr=approx(R*(log(Z-Beta)+(-0.5*q*I)),3);

disp('Using Redlich/Kwong Equation')
disp('J/mol',Hr,'Residual Enthalpy')
disp('J/mol/K',Sr,'Residual Entropy')

//End