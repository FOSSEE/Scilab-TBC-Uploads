
//example 3.1 
clc; funcprot(0);
// Initialization of Variable
V1=0.1;
V2=0.2;
P1=3.0;//pressure
n1=1.5;
n2=1.0;
n3=0.0;
P2=P1*(V1/V2)^n1;
W=(P2*V2-P1*V1)/(1-n1);
disp(W*100,"work done in kj");
W2=P1*V1*log(V2/V1);
disp(W2*100,"work done in kj");
W3=P1*(V2-V1);
disp(W3*100,"work done in kj");
clear()
