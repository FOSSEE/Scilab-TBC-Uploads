clear;
clc;

//Example8.8[Heat transfer in the Transition Region]
//Given:-
xm=0.6;//mass fraction of glycol
V=2.6*10^(-4);//Flow rate[m^3/s]
d=0.0158;//inside diameter[m]
Gr=51770;//grashof number
Pr=29.2;//Prandtl number
nu=3.12*10^(-6);//[m^2/s]
p=1.77;//mu_t/mu_s
q=90;//A particular loctaion x with x/d=q
//Solution:-
Ac=%pi*(d^2)/4;
Re=(V/Ac)*d/nu;
disp(Re,"Reynolds Number is")
//Value of Re lies in transition Region
Nu_lam=1.24*(((Re*Pr/q)+(0.025*((Gr*Pr)^(0.75))))^(1/3))*(p^(0.14));
Nu_tur=0.023*(Re^(0.8))*(Pr^0.385)*(q^(-0.0054))*(p^(0.14));
//(a)
Nu_tran_a=Nu_lam+((exp((1766-Re)/276)+(Nu_tur^(-0.955)))^(-0.955));
disp(Nu_tran_a,"(a) Nusselt number for re-entrant inlet is")
Nu_tran_b=Nu_lam+((exp((2617-Re)/207)+(Nu_tur^(-0.950)))^(-0.950));
disp(Nu_tran_b,"(b) Nusselt number for square edged inlet is")
Nu_tran_c=Nu_lam+((exp((6628-Re)/237)+(Nu_tur^(-0.980)))^(-0.980));
disp(Nu_tran_c,"(c) Nusselt number for bell mouth inlet is")