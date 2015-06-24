clc
m_g=3; //kg
p1=2.5; //bar
T1=1200; //K; Temperature of infinite source
T1a=400; //K; Initial temperature
Q=600; //kJ
cv=0.81; //kJ/kg.K
T0=290; //K; Surrounding Temperature
//final temperature = T2a

T2a=Q/m_g/cv + T1a;
AE=(T1-T0)*Q/T1; //Available energy with the source
dS=m_g*cv*log(T2a/T1a); //Change in entropy of the gas

UAE=T0*dS; //Unavailability of the gas 
A=Q-UAE; //Available energy with the gas

loss=AE-A;
disp("Loss in available energy due to heat transfer =")
disp(loss)
disp("kJ")