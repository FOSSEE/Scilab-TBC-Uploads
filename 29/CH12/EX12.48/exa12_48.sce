//caption:root_locus_and_value_of_K
//example 12_48
//page 574
s=%s;
syms K;
GH=K/(s*(s+2)*(s+4))
zeta=0.277
//from given data 
disp("the characterstics eq. is determined as:")
CH=(s*(s+2)*(s+4))+K
K=sym('-(s^3+6*s^2+8*s)')
d=diff(K,s)
e=-3*s^2-12*s-8 
r1=roots(e)
disp(r1,"roots=")
disp("-0.85 is break away point sinc it lies on root locus")
CH=sym('s^3+6*s^2+8*s+K');
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
disp(routh,"routh=")
disp("for given system to be marginally stable:");
disp("(48-K)=0 ");
disp("which gives:");
disp("K=48");
K=48;
k=48
a=6*s^2+48//intersection of root locus with imaginary plane
r=roots(a)
g=k/(s*(s+2)*(s+4))
G=syslin('c',g)
evans(g,8)
xgrid(2)
disp("the line theta=acos(zeta)=73.9 intersects root locus at sa=(-0.5+i1.66)")
disp("the value of K at s=sa is find to be 15 for zeta=0.277")
K=15
k=15
disp(r,"the point of intersection of root locus with imaginary axis =")
g=k/(s*(s+2)*(s+4))
cl=g/(1+g)
disp(cl,"C(s)/R(s)=")