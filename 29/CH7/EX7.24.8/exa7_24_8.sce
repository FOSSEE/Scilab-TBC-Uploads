//caption:root_locus
//example 7.24.8
//page 308
clc;
s=%s;
syms K;
GH=K/(s*(s+1)*(s+3))
zeta=0.5
//from given data 
disp("the characterstics eq. is determined as:")
CH=(s*(s+1)*(s+3))+K
CH=sym('(s*(s+1)*(s+3))+K');
disp('=0',CH,"characterstics_eq,CH=")
c0=coeffs(CH,'s',0);
c1=coeffs(CH,'s',1);
c2=coeffs(CH,'s',2);
c3=coeffs(CH,'s',3);
b=[c0 c1 c2 c3]
n=4;
routh=[b([4,2]);b([3,1])];
routh=[routh;-det(routh)/routh(2,1),0]
t=routh(2:3,1:2)
routh=[routh;-det(t)/t(2,1),0]
K=sym('-(s^3+4*s^2+3*s)')
d=diff(K,s)
e=-3*s^2-8*s-3 
r1=roots(e)
disp(r1,"roots=")
disp("-0.45 is break away point since it lies on root locus")
disp(routh,"routh=")
disp("for given system to be marginally stable:");
disp("(12-K)=0 ");
disp("which gives:");
disp("K=12, for margianl stability");
K=12;
k=12
a=4*s^2+k//intersection of root locus with imaginary plane
r=roots(a)
disp(r,"intersection point of root locus with imaginary axis=")
g=k/(s*(s+1)*(s+3))
G=syslin('c',g)
evans(g,8)
xgrid(2)
disp("for K=6")
k=6;
GH=k/(s*(s+1)*(s+3))
gm=K/k  //gm=K(marginal_stability)/K(desired)
disp(gm,"gain_margin=")
disp("the point where K=6 is s=1.2")
pm=180+(-90-(atan(1.2/1)*180/%pi)-(atan(1.2/3)*180/%pi))
disp(pm,"phase margin=")