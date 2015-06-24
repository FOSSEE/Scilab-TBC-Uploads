//Example 14.4
clc
s=%s;
tau1=1;
tau2=1/2;
tau3=1/3;
taui=0.25;
Kc=5;
n=Kc/(tau1*tau2*tau3)*(taui*s+1);
d=taui*s*(s+(1/tau1))*(s+(1/tau2))*(s+(1/tau3));
G=syslin('c',n/d);
//The characteristic equation is therefore
disp('1+G=0')
disp('=0',1+G,'1+G=');
//which is equivalent to
disp("s^4+6*s^3+11*s^2+36*s+120=0")
h=poly([120 36 11 6 1],'s','coeff')
r=routh_t(h)
y=coeff(h);
n=length(y);
c=0;
for i=1:n
if (r(i,1)<0)
c=c+1;
end 
end
if(c>=1)
printf("system is unstable\n")
else ("system is stable")
end
