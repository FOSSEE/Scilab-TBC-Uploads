clear all; clc;

Q_c=1000
N_a=3550
N_c=4000
Q_a=Q_c*(N_a/N_c)
printf("\n Qa=Qc*(Na/Nc)=%0.1f cfm",Q_a)

disp("H=Cp*T1*[(p2/p1)^((k-1)/k)-1]")
disp("Ha/Hc=((Na/Nc)^2)")
disp("Where ka=1.40,Cpa=0.24 Btu/lbm*degrees Farenheit,,T1a=530R,((ka-1)/ka)=0.2857 and kc=1.30")
disp("Cpc=0.20Btu/(lbm*degrees Farenheit),T1c=550R,((kc-1)/kc)=0.2307, we have:")
disp("(Cpa*T1a)*[[(p2/p1)^((k-1)/k)-1]]_a/{(Cpc*T1c)*[[(p2/p1)^((k-1)/k)-1]]_c}=((3550/4000)^2)")
//let x=(Cpa*T1a)*[[(p2/p1)^((k-1)/k)-1]]_a/{(Cpc*T1c)*[[(p2/p1)^((k-1)/k)-1]]_c}
x=((3550/4000)^2)
printf(" Thus the value is equal to %0.3f",x)

disp("Or")
disp("(0.24*530*[(p2/p1)^(0.2857-1]_a)/(0.20*550*[(19.7/17.7)^(0.2307)-1])=0.787")
disp("Hence ((p2/p1)^0.2857)_a=1+(0.787*0.025)/1.156=1.017")
disp("p2a=15.6 psia")
