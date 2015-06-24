clear;
clc;


//Example 5.7
//Caption : Program to Find the Maximum Work obtained in a Steady state Flow


//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

function[Q]=ICPH(T0,T,A,B,C,D)
  t=T/T0;
  Q=(A+((B/2)*T0*(t+1))+((C/3)*T0*T0*((t^2)+t+1))+(D/(t*T0*T0)))*(T-T0)
  funcprot(0);
endfunction
    
function[Q]=ICPS(T0,T,A,B,C,D)
  t=T/T0;
  Q=((A)*log(t))+(((B*T0)+(((C*T0*T0)+(D/(t*t*T0*T0)))*(t+1)/2))*(t-1))
  funcprot(0);
endfunction
    

//Given Values
P1=50;//bar
P2=1.013;//bar
T1=800;//[K]
T2=300;//[K]
R=8.314;

//del_H=intergral(CpdT) in the limits T1 and T2
A=3.280;
B=0.593*(10^-3);
C=0;
D=0.040*(10^5);
del_H=R*ICPH(T1,T2,A,B,C,D);//[J/mol]

//del_S=integral[Cp(dT/T)] -Rln(P2/P1)  btw the limits T1,T2
del_S=(R*ICPS(T1,T2,A,B,C,D))-(R*log(P2/P1));//[J/mol/K]
W_ideal=approx(del_H-(T2*del_S),0);//[J/mol]
disp('J/mol',W_ideal,'Maximum Work')

//End