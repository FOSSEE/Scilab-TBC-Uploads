//caption:root_locus_and_value_of_K
//example 12.45
//page 567
s=%s;
syms K;
GH=K*(s+1)/(s*(s+2)*(s^2+4*s+8))
disp("the characterstics eq. is determined as:")
CH=((s*(s+2)*(s^2+4*s+8)))+K*(s+1)
CH=sym('((s*(s+2)*(s^2+4*s+8)))+K*(s+1)');
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
disp(routh,"routh=")
disp("for given system to be marginally stable:");
disp("(K^2-28*K-1280)=0 ");
disp("which gives:");
disp("K=52.4 and -24.42");
K=52.4;//considering positive value
k=52.4
a=((80-52.4)/6)*s^2+52.4//intersection of root locus with imaginary axis
r=roots(a)
g=k*(s+1)/(s*(s+2)*(s^2+4*s+8))
G=syslin('c',g)
clf();
evans(g,10)
xgrid(2)
disp(r,"the point of intersection of root locus with imaginary axis =")
