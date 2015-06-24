//clear//
clear;
clc;

//Example 30.5
//Given
D = 1.5; //[cm]
Nre = 25000;
Qm = 40; //[L/m62-h]
Mw = 30000;
Dv = 5*10^-7; //[cm^2/s]
R = 0.75;

//Solution
//(a)
//Base case:
v = Qm*2.78*10^-5; //[cm/s]
Nsc = 0.01/Dv; 
//Using Eq.(21.55)
Nsh = 0.0096*Nre^0.913*Nsc^0.346;
kc = Nsh*Dv/D; //[cm/s]
//Let A = K/(1-K)
A = (1-R)/R*exp(-v/kc);
K = A/(1+A);
//If the flux is reduced to 0.556*10^-3 cm/s
//Let B = (1-R)/R
B = K/(1-K)*exp(0.556*10^-3/kc);
R = 1/(1+B);
//As flux approaches zero R appraoches 1-K:
Rmax = 1-K;
disp(R,'fraction rejected (R) =');
disp(Rmax,'maximum rejection (Rmax) =');

//(b)
//Using Fig. (30.24)
kc1 = kc;
M2 = 10000;
R2 = 0.35;
K1 = K;
lambda1 = 1-K1^0.5;
lambda2 = lambda1*(10000/Mw)^(1/3);
K2 = (1-lambda2)^2;
kc2 = kc1*3^0.22; //[cm/s]
//Let B2 = (1-R2)/R2
B2 = K2/(1-K2)*exp(v/kc2);
R2 = 1/(1+B2);
disp(R2,'fraction rejected (R2) =');

//(c)
Dpore = 10^-7; //[cm^2/s]
eps = 0.5;
tou = 2;
De = 2.5*10^-8; //[cm^2/s]
L = 2*10^-5; //[cm]
v = 5.56*10^-4; //[cm/s]
vLbyDe = v*L/De;
//Using Eq.(30.63)
K = 0.101;
c2bycs = K*exp(vLbyDe)/(K-1+exp(vLbyDe));
disp('Diffusion in the membrane makes the premeate concentrations about twice as high as it would be if c2=Kcs=0.101cs, indicating that the partition coefficient is lower than that estimated in part(a) ');
