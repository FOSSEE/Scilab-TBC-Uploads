// To determine the state vector at the end of first iteration
clear
clc;
C1=.02*100;
C2=.05;
Fs=100;
S1=.41 -%i*.11;
S2=-.4 +%i*.10;
S3=-.105 +%i*.11;
S4=-.105 +%i*.11;
S5=.14 -%i*.14;
S6=-.7 +%i*.35;
Z12=.08+%i*.24;
Z23=.06+%i*.18;
Z31=.02+%i*.06;
Z21=Z12;
Z32=Z23;
Z13=Z31;
W1=(50*10^(-6))/((C1*abs(S1)+(C2*(Fs)))^2);
W2=(50*10^(-6))/((C1*abs(S2)+C2*(Fs))^2);
W3=(50*10^(-6))/((C1*abs(S3)+C2*(Fs))^2);
W4=(50*10^(-6))/((C1*abs(S4)+C2*(Fs))^2);
W5=(50*10^(-6))/((C1*abs(S5)+C2*(Fs))^2);
W6=(50*10^(-6))/((C1*abs(S6)+C2*(Fs))^2);
disp(W1,"W1=");//Answers for W1,W2,W3,W4,W5,W6 in the book is wrongly Calculated
disp(W2,"W2=");
disp(W3,"W3=");
disp(W4,"W4=");
disp(W5,"W5=");
disp(W6,"W6=");
a1=W1/(abs(13)^2)
[D]=diag([W1/(abs(Z13)^2);W2/(abs(Z31)^2);W3/(abs(Z12)^2);W4/(abs(Z21)^2);W5/(abs(Z23)^2);W6/(abs(Z32)^2)]);
A=[-1 0 1;1 0 -1;1 -1 0;-1 1 0;0 1 -1;0 -1 1];
B=[-1 0;1 0;1 -1;-1 1;0 1;0 -1];
b=[1;-1;0;0;-1;1];
C=(B')*D;//Assuming Transpose(B)D=C
F=(B')*D*B;//Assuming Transpose(B)*D*B=F
G=(inv(F))*C;//Assuming(BTDB)-1*(BT)*D=F
E1=1.05;
E2=E1;
E3=E1;
invH=diag([Z31/E3;Z13/E1;Z12/E1;Z21/E2;Z23/E2;Z32/E2]);
Sm=[.41+%i*.11;-.4-%i*.1;-.105-%i*.11;.14+%i*.14;.72+%i*.37;-.7+%i*.35];
EMo=invH*Sm;
a=EMo-b*E1;
E=G*a;
disp(E,"E=");  //Answers differs due to wrong calculation of W1,W2,W3,W4,W5,W6

