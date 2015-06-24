//Example 14.1
clear
clc
s=%s;
G1=10*((0.5*s+1)/s);
G2=1/(2*s+1);
H=1;
G=G1*G2*H
//The characteristic equation is therefore
disp('1+G=0')
disp('=0',1+G,'1+G=');
//which is equivalent to
disp("s^2+3*s+5=0");
h=poly([5,3,1],'s','coeff');
r=roots(h)
disp(r,'roots=')
//Since the real part of roots are negative, the system is stable
n=length(r);
c=0;
for i=1:n
if (real(r(i,1))<0)
c=c+1;
end 
end
if(c>=1)
printf("system is stable\n")
else ("system is unstable")
end