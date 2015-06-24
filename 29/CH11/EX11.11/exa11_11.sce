//Caption:expression_for_unit_step_response
// example 11_11
//page 481
syms G1 G2 G3 H1 t;
s=%s;
G1=s+1;
G2=1/(s+2);
H2=1/(s*(s+1));
H1=1/(s+2);
a=G1/(1+G1*H1);
b=a/(1+a*H2)
y=b*G2;
disp(y,"C(s)/R(s)=")
//for unit step response R(s)=1/s;
C=y*(1/s)
c=ilaplace(C,s,t)
disp(c,"expression_for_unit_step_response_is=")