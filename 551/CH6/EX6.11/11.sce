clc
T0=283; //K
cp=4.18; //kJ/kgK
m1=20; //kg
T1=363; //K
m2=30; //kg
T2=303; //K
T3=327; //K

AE1=integrate('m1*cp*(1-T0/T)', 'T', T0, T1);
AE2=integrate('m2*cp*(1-T0/T)', 'T', T0, T2);

AE_total=AE1 + AE2; //before mixing

//If T K is the final temperature after mixing
T=(m1*T1+m2*T2)/(m1+m2);
m_total=m1+m2;

//Available energy of 50kg of water at 54 0C
AE3=m_total*cp*[(T3-T0) - T0*log(T3/T0)];

//Decrease in available energy due to mixing dAE
dAE=AE_total - AE3;
disp("dAE=")
disp(dAE)
disp("kJ")