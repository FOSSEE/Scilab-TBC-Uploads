//Caption:transfer_function
// example 11_2
//page 469
syms G1 G2 G3 H1;
s=%s;
G1=4/(s*(s+4));
G2=s+1.2;
G3=s+0.8;
H1=1;
H2=(G2+G3);
a=G1/.H1;
y=a/(1+a*H2)
disp(y,"C(s)/R(s)=")