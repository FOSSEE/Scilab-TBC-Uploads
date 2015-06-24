// page no 447
//prob no 10.10
clc;
Pe= input ("enter error probability = ");
Q= input("enter the probability of transmitting 1 = ");//Hence probability of transmitting zero is 1-Q = P
P=1-Q;
Px(1)=Q;
Px0=P;
// If x and y are transmitted digit and received digit then for BSC P(y=0/x=1) = P(y=1/x=0) = Pe , P(y=0/x=10) = P(y=1/x=1) = 1-Pe
// to find the probability of receiving 1 is Py(1) = Px(0)*P(y=1/x=0) + Px(1)*P(y=1/x=1)
Py(1)= ((1-Q)* Pe) + (Q *(1-Pe));
disp(Py(1),"Py(1)");
Py0=((1-Q)*(1-Pe)) + (Q*Pe)
disp(Py0,"Py0");