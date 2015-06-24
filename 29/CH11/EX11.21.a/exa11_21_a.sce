//Caption:roots_of_characterstics_equation
//example 11_21_a
//page 491
s=%s;
num=210
den=sym('s*(s+2)*(s^2+12*s+6)');
G=num/den;
G=simple(G);
H=1;
n1=poly([210],'s',"coeff");
d1=poly([210 192 390 44 1],'s',"coeff");
CL=syslin('c',n1,d1)
disp(CL,"C(s)/R(s)=")
b=denom(CL)
disp(0,"=",b,"the char. eq is:",)
r=roots(b);
disp(r,"roots of char. eq. are=");
