clear;
clc;

//Example 5.3
//Caption : Program to Find the Final Temperature in Reversible Adiabatic Expansion

function[Q]=MCPS(T0,T,A,B,C,D)
  t=T/T0;
  Q=(A)+(((B*T0)+(((C*T0*T0)+(D/(t*t*T0*T0)))*(t+1)/2))*((t-1)/log(t)))
  funcprot(0);
endfunction
    

//Given values
P2=1;//bar
P1=5;//bar
T0=550;//K
A=1.702;
B=9.081*(10^-3);
C=-2.164*(10^-6);
D=0;

//Equation to be used
//(<Cp>s/R)ln(T2/T1)=ln(P2/P1) since del_S=0
//let I=(<Cp>s/R)

//T2=exp(log(1/5)/I);
a=T0-1;//Initial
i=-1;
while (i==-1)
  b=MCPS(T0,a,A,B,C,D);
  c=(log(1/5))/(log(a/T0));
  flag=c-b;
  if(flag<=0.0001) then
    T=a;
    i=1;
  else
    a=a-.01; 
    i=-1;
  end  
end

disp('K',T,'Final Temperature')

//End