clear;
clc;

//To find Approx Value
function[A]=approx(V,n)
  A=round(V*10^n)/10^n;//V-Value  n-To what place
  funcprot(0)
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

//Example 7.4
//Caption : Program to Find the final Temperature and its Entropy change

//Given Values
P1=20;//[bar]
T=400;//[K]
P2=1;//[bar]
R=8.314;

//Solution 

//using Eq(6.84)
//del_H=Cp(T2-T1)+Hr2-Hr1=0  but Hr2=0
//T2=Hr1/Cp + T1
Tc=369.8;//[K]
Pc=42.48;//[bar]
omega=0.152;
a=T;//Initial
for i=1:2
  Tr=a/Tc
  Pr=P1/Pc;
  Hr1=R*Tc*HRB(Tr,Pr,omega);//[J/mol]
  Cp=R*(1.213+(28.785*10^-3*a)-(8.824*10^-6*a*a));//[J/mol/K]
  T2=(Hr1/Cp)+a;
  Tm=(a+T2)/2;
  i=i+1;
  a=Tm;
end
Tm=a;
T2=round(Tm)//[K]
Tr=T/Tc;
Sr=R*SRB(Tr,Pr,omega);

del_S=approx((Cp*log(T2/T))-(R*log(P2/P1))-Sr,2);

disp('J/mol/K',del_S,'Entropy')
disp('Positive Entropy represents the irreversibility of Throttling Process')
disp('K',T2,'Final Temperature')

//End
  