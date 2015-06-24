//caption:root_locus_and_value_of_K
//example 12.46
//page 570
s=%s;
syms K;
GH=K/(s*((s+6)^2))
disp("the characterstics eq. is determined as:")
CH=(s*((s+6)^2))+K
CH=sym('(s*((s+6)^2))+K');
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
K=sym('-(s*((s+6)^2))')
d=diff(K,s)
e=3*s^2+24*s+36 
r1=roots(e)
disp(r1,"roots=")
disp("-2 is break away point sinc it lies on root locus")
disp(routh,"routh=")
disp("for given system to be marginally stable:");
disp("(-(K-432)/12)=0 ");
disp("which gives:");
disp("K=432");
K=432;//considering positive value
k=432
a=12*s^2+k//intersection of root locus with imaginary axis plane
r=roots(a)
g=k/(s*((s+6)^2))
G=syslin('c',g)
clf();
evans(g,5)
xgrid(2)
disp(r,"the point of intersection of root locus with imaginary axis =")
