//caption:root_locus_and_value_of_K
//example 12.43
//page 564
s=%s;
syms K;
GH=K/(s*(s+2)*(s^2+2*s+2))
disp("the characterstics eq. is determined as:")
CH=(s*(s+2)*(s^2+2*s+2))+K
CH=sym('s^4+4*s^3+6*s^2+4*s+K');
disp('=0',CH,"characterstics_eq,CH=")
c0=coeffs(CH,'s',0);
c1=coeffs(CH,'s',1);
c2=coeffs(CH,'s',2);
c3=coeffs(CH,'s',3);
c4=coeffs(CH,'s',4);
b=[c0 c1 c2 c3 c4 ]
routh=[b([5,3,1]);b([4,2]),0]
routh=[routh;-det(routh(1:2,1:2))/routh(2,1),routh(1,3),0]
routh(3,1)=simple(routh(3,1))
t=routh(2:3,1:2)
l=simple(-det(t)/t(2,1))
routh=[routh;l,0,0]
routh=[routh;K,0,0]
K=sym('s^4+4*s^3+6*s^2+4*s')
d=diff(K,s)
e=-(4*s^3+12*s^2+12*s+4)
r=roots(e)
disp(routh,"routh=")
disp("for given system to be marginally stable:");
disp("((20-4K)/5)=0 ");
disp("which gives:");
disp("K=5");
K=5;
k=5
a=5*s^2+5//intersection of root locus with s plane
r=roots(a)
disp(r,"intersection point with imaginary axis=")
g=k/(s*(s+2)*(s^2+2*s+2))
G=syslin('c',g)
evans(g,200)
xgrid(2)
disp("angle of departure=-90 and +90")
disp("breakaway point is -1 and +j and -j")
disp("on solving we find K=1")
