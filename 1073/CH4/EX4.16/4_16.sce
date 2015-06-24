clc;
clear;
//Example 4.16
//In steady state,we can write:
//Qcd=Qdb
//sigma(Tc^4-Td^4)*/(1/ec+1/ed-1)=sigma(Td^4-Tb^4)/(1/ed+1/eb-1)
// i.e Td^4=0.5*(Tc^4-Tb^4)
//Given:
Ta=600  //[K]
eA=0.8;
eC=0.5;
eD=0.4;
sigma=5.67*10^-8        //For air
//(600^4-Tc^4)/2.25=(Tc^4-Td^4)/3.5
//1.56*(600^4-Tc^4)=Tc^4-Td^4
//Putting value of Td in terms of Tc
//1.56*(600^4-Tc^4)=Tc^4-0.5*(Tc^4-300^4)
function y=f(Tc)
  y=1.56*(600^4-Tc^4)-Tc^4+0.5*(Tc^4-300^4)
endfunction
Tc=fsolve(500,f);           //[K]
//or
Tc=560.94       //[K] Approximate after solving
Td=sqrt(sqrt(0.5*(Tc^4-300^4)))         //[K]
Q_by_a=sigma*(Ta^4-Tc^4)/(1/eA+1/eC-1)      //[W/sq m]
printf("\nRate of heat exchange per unit area=%f W/m^2",Q_by_a);
printf("\nSteady state temperatures,Tc=%f K,and Td=%f K",Tc,Td);
