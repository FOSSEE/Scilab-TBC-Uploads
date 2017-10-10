b=450//width, in mm
D=900//depth, in mm
c=80//cover, in mm
d=D-c//in mm
Asc=4000//in sq mm
Ast=Asc//in sq mm
P=500//in kN
e=600//in mm
m=18.66
//equation for x is: x^2 + (k1 - k2 / sigma_cbc_dash) x - k3 = 0
k1=2/b*((1.5*m-1)*Asc+m*Ast)
k2=2*P*10^3/b
k3=2/b*(c*(1.5*m-1)*Asc+d*m*Ast)
//equation for sigma_cbc_dash is: sigma_cbc_dash = Q1 x /(Q2 x^2 (d - x/3) + Q3 (x - c))
Q1=P*10^3*(e+d-D/2)
Q2=b/2
Q3=(1.5*m-1)*(d-c)*Asc
sigma_cbc_dash=7//assume, in MPa
//solving equation for x
p=1
q=(k1-k2/sigma_cbc_dash)
r=-k3
x=(-q+sqrt(q^2-4*p*r))/2/p//in mm
sigma_cbc_dash = Q1*x/(Q2*x^2*(d-x/3)+Q3*(x-c))//in MPa
//this process is repeated till convergence
//solving equation for x
p=1
q=(k1-k2/sigma_cbc_dash)
r=-k3
x=(-q+sqrt(q^2-4*p*r))/2/p//in mm
sigma_cbc_dash = Q1*x/(Q2*x^2*(d-x/3)+Q3*(x-c))//in MPa
//solving equation for x
p=1
q=(k1-k2/sigma_cbc_dash)
r=-k3
x=(-q+sqrt(q^2-4*p*r))/2/p//in mm
sigma_cbc_dash = Q1*x/(Q2*x^2*(d-x/3)+Q3*(x-c))//in MPa
//solving equation for x
p=1
q=(k1-k2/sigma_cbc_dash)
r=-k3
x=(-q+sqrt(q^2-4*p*r))/2/p//in mm
sigma_cbc_dash = Q1*x/(Q2*x^2*(d-x/3)+Q3*(x-c))//in MPa
//solving equation for x
p=1
q=(k1-k2/sigma_cbc_dash)
r=-k3
x=(-q+sqrt(q^2-4*p*r))/2/p//in mm
sigma_cbc_dash = Q1*x/(Q2*x^2*(d-x/3)+Q3*(x-c))//in MPa
//solving equation for x
p=1
q=(k1-k2/sigma_cbc_dash)
r=-k3
x=(-q+sqrt(q^2-4*p*r))/2/p//in mm
sigma_sc=m*sigma_cbc_dash*(x-c)/x//in MPa
sigma_st=m*sigma_cbc_dash*x/(d-x)//in MPa
//answer in textbook is incorrect
