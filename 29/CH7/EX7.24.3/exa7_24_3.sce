//caption:root_locus_description
//example 7.24.3
//page 299
clc;
s=%s;
syms K
G=K/(s*(s+6)*(s^2+4*s+13));
disp("the characterstics eq. is determined as:")
CH=(s*(s+6)*(s^2+4*s+13))+K
CH=sym('(s*(s+6)*(s^2+4*s+13))+K');
disp('=0',CH,"characterstics_eq,CH=")
eq=(s*(s+6)*(s^2+4*s+13))
p=roots(eq)
disp(p,"open loop poles are:")
phi1=180-(atan(3/2)*180/%pi)
phi2=atan(3/4)*180/%pi
phi3=90
phi_p2=180-(phi1+phi2+phi3)
phi_p3=-phi_p2
disp(phi_p2,"angle of departure for -2+3i=")
disp(phi_p3,"angle of departure for -2-3i=")
c0=coeffs(CH,'s',0);
c1=coeffs(CH,'s',1);
c2=coeffs(CH,'s',2);
c3=coeffs(CH,'s',3);
c4=coeffs(CH,'s',4);
b=[c0 c1 c2 c3 c4]
routh=[b([5,3,1]);b([4,2]),0]
routh=[routh;-det(routh(1:2,1:2))/routh(2,1),routh(1,3),0]
routh(3,1)=simple(routh(3,1))
t=routh(2:3,1:2)
l=simple(-det(t)/t(2,1))
routh=[routh;l,0,0]
routh=[routh;K,0,0]
K=sym('-(s*(s+6)*(s^2+4*s+13))')
d=diff(K,s)
e=-(4*s^3+30*s^2+74*s+78)
f=-e;
r=roots(f);
disp(r,"r=")
disp("since -4.2 lies on root locus, so the breakaway point is -4.2 ")
disp(routh,"routh=")
disp("for given system to be marginally stable:");
disp("(78-0.34*K)=0 ");
disp("which gives:");
disp("K=229.4");
K=229.4;
k=229.4;
a=29.2*s^2+229.4//intersection of root locus with s plane
r1=roots(a)
g=k/(s*(s+6)*(s^2+4*s+13));
g=syslin('c',g)
evans(g,200)
xgrid(2)
disp(r1,"the point of intersection of root locus with imaginary axis =")

