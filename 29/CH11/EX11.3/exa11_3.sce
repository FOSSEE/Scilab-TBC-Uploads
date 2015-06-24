//Caption:transfer_function
// example 11_3
//page 470
syms G1 G2 G3 H1;
s=%s;
G1=4;
G2=s
G3=1/(s*(s+2));
H1=0.5;
H2=1;
a=(G1+G2);
b=(a*G3);
c=b/.H1;
y=c/(1+c*H2)
disp(y,"C(s)/R(s)=")