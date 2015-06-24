clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

function[Q]=MCPH(T0,T,A,B,C,D)
  t=T/T0;
  Q=(A+((B/2)*T0*(t+1))+((C/3)*T0*T0*((t^2)+t+1))+(D/(t*T0*T0)))
  funcprot(0);
endfunction
    
function[Q]=MCPS(T0,T,A,B,C,D)
  t=T/T0;
  Q=(A)+(((B*T0)+(((C*T0*T0)+(D/(t*t*T0*T0)))*(t+1)/2))*((t-1)/log(t)))
  funcprot(0);
endfunction

//Example 7.9
//Caption : Program to Find Work Reqiured and Discharge Temperature of Methane

//Given Values

R=8.314;
T1=293.15;//[K]

P1=140;//[KPa]
P2=560;//[KPa]

eta=0.75;//[Efficiency]
A=1.702;
B=9.081*10^-3;
C=-2.164*10^-6;
D=0;

i=-1;
a=round(T1);//Initial
while (i==-1)
  b=MCPS(T1,a,A,B,C,D);
  b=b^-1;
  c=T1*((P2/P1)^b);
  flag=c-a;
  if(flag<=0.0001) then
    T2i=a;
    i=1;
  else
    a=a+0.01; 
    i=-1;
  end  
end

Cps=R*MCPS(T1,T2i,A,B,C,D);
Cph=approx(R*MCPH(T1,T2i,A,B,C,D),3);

//from Eqn(7.19)
Ws=approx(Cph*(T2i-T1),0)//[J/mol]
Ws=approx(Ws/eta,0)//Actual work
del_H=Ws;

//From eqn(7.21)  Actual discharge Temperature
//T2=T1+(del_H/Cph)
i=-1;
a=round(T2i);//Initial
chk=1;
while (i==-1)
  b=R*MCPH(T2i,a,A,B,C,D);
  c=del_H/(a-T1);
  flag=c-b;
  if(flag<=0.001) then
      T2=a;
      i=1;
  else
      a=a+0.001; 
      i=-1;
  end  
end
Cph_T2=approx(R*MCPH(T2i,T2,A,B,C,D),2);
disp('K',T2,'Temperature')
disp('J/mol/K',Cph_T2,'Enthalpy')
disp('J/mol',Ws,'Actual Work')

disp('Note: The answer in the Book varies with that of this code because the Calculation in the Book does not leads to the answer given')

//End