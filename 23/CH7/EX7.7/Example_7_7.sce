clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction 

function[Q]=MCPS(T0,T,A,B,C,D)
  t=T/T0;
  Q=(A)+(((B*T0)+(((C*T0*T0)+(D/(t*t*T0*T0)))*(t+1)/2))*((t-1)/log(t)))
  funcprot(0);
endfunction
    
function[Q]=MCPH(T0,T,A,B,C,D)
  t=T/T0;
  Q=(A+((B/2)*T0*(t+1))+((C/3)*T0*T0*((t^2)+t+1))+(D/(t*T0*T0)))
  funcprot(0);
endfunction
    
function[H]=HRB(Tr,Pr,omega)
  B0=0.083-(0.422/(Tr^1.6));
  diffr_B0=0.675/(Tr^2.6);//dB0/dTr
  B1=0.139-(0.172/(Tr^4.2));
  diffr_B1=0.722/(Tr^5.2);//dB0/dTr
  H=Pr*(B0-(Tr*diffr_B0)+(omega*(B1-(Tr*diffr_B1))));
  funcprot(0);
endfunction

function[Q]=SRB(Tr,Pr,omega)
  B0=0.083-(0.422/(Tr^1.6));
  diffr_B0=0.675/(Tr^2.6);//dB0/dTr
  B1=0.139-(0.172/(Tr^4.2));
  diffr_B1=0.722/(Tr^5.2);//dB0/dTr
  Q=-Pr*(diffr_B0+(omega*diffr_B1));
  funcprot(0);  
endfunction 

//Example 7.7
//Caption : Program to Find the isentropic Work Produced 

//Given Values

T1=573.15;//[K]
P1=45;//[bar]
P2=2;//[bar]
Tc=282.3;//[K]
Pc=50.4;//[bar]
omega=0.087;
A=1.424;
B=14.394*10^-3;
C=-4.392*10^-6;
D=0;
R=8.314;

//Using Eqn(6.84)
//del_H=<Cp>h (T2-T1)+Hr2-Hr1
//Using Eqn(6.85))
//del_S=<Cp>s ln(T2/T1) - R*ln(P2/P1)+Sr2-Sr1

//(a) equations for Ideal gas
//No residuals terms, whence

//del_H=<Cp>h(T2-T1)
//del_S=<Cp>s ln(T2/T1) - R*ln(P2/P1)

del_S=0//isentropic
//Whence K = <Cp>s/R ln(T2/T1) = ln(P2/P1)
K=log(P2/P1);
//let c = <Cp>s/R
//T2=exp(K/c+ln(T1))
i=-1;
a=round(T1);//Initial
while (i==-1)
  b=MCPS(T1,a,A,B,C,D);
  temp=exp((K/b)+log(T1));
  flag=a-temp;
  if(flag<=0.1) then
    T2=a;
    i=1;
  else
    a=temp-0.1; 
    i=-1;
  end  
end
disp('(a)by Equations for an Ideal gas')
disp('K',approx(T2,1),'Temp = ')
Cp_h=R*MCPH(T1,T2,A,B,C,D);
del_Hs=Cp_h*(T2-T1);
Ws_a=approx(del_Hs,0);
disp('J/mol',Ws_a,'Work')

//(b)-Appropriate Generalized correlations

Tr1=T1/Tc;
Pr1=P1/Pc;

Hr1=R*Tc*HRB(Tr1,Pr1,omega);//[J/mol]
Sr1=R*SRB(Tr1,Pr1,omega);//[J/mol/K]

Tr2=T2/Tc;
Pr2=P2/Pc;

Sr2=R*SRB(Tr2,Pr2,omega);

//Using Eqn(6.85))
//del_S=<Cp>s ln(T2/T1) - R*ln(P2/P1)+Sr2-Sr1
//del_S=0 isentropic
//K=<Cp>s ln(T2/T1)=Rln(P2/P1)-Sr2+Sr1
K=R*log(P2/P1)-Sr2+Sr1;
//T2=exp((K/<Cp>s)+ln T1)
i=-1;
a=round(T1);//Initial
while (i==-1)
  b=R*MCPS(T1,a,A,B,C,D);
  temp=exp((K/b)+log(T1));
  flag=a-temp;
  if(flag<=0.1) then
    T2=a;
    i=1;
  else
    a=temp-0.1; 
    i=-1;
  end  
end

disp('(b)by Appropriate generalized correlations')
disp('K',approx(T2,1),'Temp = ')
Tr2=T2/Tc;

Sr2=R*SRB(Tr2,Pr2,omega);//[J/mol/K]
Hr2=R*Tc*HRB(Tr2,Pr2,omega);//[J/mol]
Cp_h=R*MCPH(T1,T2,A,B,C,D);
del_Hs=Cp_h*(T2-T1)+Hr2-Hr1;
Ws_b=approx(del_Hs,-1);
disp('J/mol',Ws_b,'Work')

//End