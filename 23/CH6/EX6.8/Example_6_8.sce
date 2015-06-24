clear;
clc;

//Example 6.8
//Caption : Program to Find V U S and H fo 1-butene

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
endfunction  

function[Q]=SRB(Tr,Pr,omega)
  B0=0.083-(0.422/(Tr^1.6));
  diffr_B0=0.675/(Tr^2.6);//dB0/dTr
  B1=0.139-(0.172/(Tr^4.2));
  diffr_B1=0.722/(Tr^5.2);//dB0/dTr
  Q=-Pr*(diffr_B0+(omega*diffr_B1));
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

function[Q]=ICPS(T0,T,A,B,C,D)
  t=T/T0;
  Q=((A)*log(t))+(((B*T0)+(((C*T0*T0)+(D/(t*t*T0*T0)))*(t+1)/2))*(t-1))
  funcprot(0);
endfunction

function[Q]=ICPH(T0,T,A,B,C,D)
  t=T/T0;
  Q=(A+((B/2)*T0*(t+1))+((C/3)*T0*T0*((t^2)+t+1))+(D/(t*T0*T0)))*(T-T0)
  funcprot(0);
endfunction

//Example 6.8
//Caption : Program to Find V U S and H fo 1-butene

//Given values(from steam tables)
Tc=420;//[K]
Pc=40.43;//[bar]
omega=0.191;
Tn=266.9;//[K]
A0=1.967;
B0=31.630*10^-3;
C0=-9.837*10^-6;
D0=0;
T1=473.15;//[K]
P=70;//[bar]
R=8.314;
//From Table(E.3) And Table(E.4)
Z0=0.485;
Z1=0.142;

Tr=T1/Tc;
Pr=P/Pc;
Z=Z0+(omega*Z1);
V=approx((Z*R*T1*10^-2)/P,4);//[m^3/Kmol]

//step(a) vaporization at T1 and P1=P_saturated
//using eqn(6.70)  lnP_sat=A-(B/T)
//Solving eqn ln(1.0133)=A-(B/266.9) and ln(40.43)=A-(B/420)
a=[1,(-1/266.9);1,(-1/420)];
b=[log(1.0133);log(40.43)];
x=(a^-1*b);
A=x(1,1);
B=x(2,1);
//using eqn(4.12)  del_Hn/RTn=1.092*(ln Pc-1.013)/(0.930-Tr_n)
Tr_n=Tn/Tc;
del_Hn=R*Tn*(1.092*(log(Pc)-1.013)/(0.93-Tr_n));//[J/mol]
T2=273.15;//[K]
Tr=T2/Tc;
//Using Eqn(4.13)  del_H/del_Hn=((1-Tr)/(1-Tr_n))^0.38
del_H_a=del_Hn*((1-Tr)/(1-Tr_n))^0.38;
del_S_a=approx(del_H_a/T2,2);

//Step(b)transition to ideal gas State at(T1,P1)
P_sat=exp(A-(B/273.15));
Pr=P_sat/Pc;
Tr=T2/Tc;
Hr_b=approx(R*Tc*HRB(Tr,Pr,omega),0)//[J/mol]
Sr_b=approx(R*SRB(Tr,Pr,omega),2)//[J/mol/K]

//Step(c) Change to (T2,P2) in ideal-gas state

H_c=approx(R*ICPH(T2,T1,A0,B0,C0,D0),0);//[J/mol]
S=R*ICPS(T2,T1,A0,B0,C0,D0);//[J/mol/K]
del_S_c=approx(S-(R*log(P/P_sat)),2);//[J/mol/K]

//Step(d) Transition to actual final state at(T2,P2)
//Using eqn(6.76) and eqn(6.77)
//Hr/RTc=Hr0/RTc+(omega*Hr1/RTc)
//Sr/R=Sr0/R+(omega*Sr1/R)  Sr0,Sr1 from Tables(E.5)
Tr=T1/Tc;
Pr=P/Pc;
Hr_d=R*Tc*(-2.294+(omega*-0.713));
Sr_d=R*(-1.566+(omega*-0.726));

H=approx(del_H_a-Hr_b+H_c+Hr_d,0);
S=approx(del_S_a-Sr_b+del_S_c+Sr_d,2);
U=approx(H-(P*V*10^2),0);

disp('m^3/Kmol',V,'Volume(V)=')
disp('J/mol',U,'Internal energy(U)=')
disp('J/mol',H,'Enthalpy(H)=')
disp('J/mol/K',S,'Entropy(S)=')

disp('Note: The Answer here Slightly Varies with That of Book because of the different approximation')

//End