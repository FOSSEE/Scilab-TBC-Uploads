clear;
clc;

//Example 4.3
//Caption : Program To Find the Final Temperature with Heat Given

function[Q]=MCPH(T0,T,A,B,C,D)
  t=T/T0;
  Q=(A+((B/2)*T0*(t+1))+((C/3)*T0*T0*((t^2)+t+1))+(D/(t*T0*T0)))
  funcprot(0);
endfunction
    

//Given values for Ammonia
R=8.314;
T0=533.15;
A=3.578;
B=3.020*(10^-3);
C=0;
D=-0.186*(10^5);
Q=422*(10^3);
n=11.3;
del_H=Q/n;

//Solution
i=-1;
a=round(T0);//Initial
while (i==-1)
  b=R*MCPH(T0,a,A,B,C,D);
  c=b*(a-T0);
  flag=del_H-c;
  if(flag<=100) then
    T=a-1;
    i=1;
  else
    a=a+1; 
    i=-1;
  end  
end


disp('K',T,'Temperature Required(Approx)')

//End