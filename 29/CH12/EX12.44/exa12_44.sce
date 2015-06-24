//caption:root_locus_and_value_of_K
//example 12.44
//page 565
s=%s;
syms K;
GH=K/((s^2+2*s+5)*(s^2+2*s+2))
disp("the characterstics eq. is determined as:")
CH=((s^2+2*s+5)*(s^2+2*s+2))+K
CH=sym('((s^2+2*s+5)*(s^2+2*s+2))+K');
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
K=sym('-(s^2+2*s+5)*(s^2+2*s+2)')
d=diff(K,s)
e=-(4*s^3+12*s^2+22*s+14)
r=roots(e)
disp(routh,"routh=")
disp("for given system to be marginally stable:");
disp("((7.5*14-4(K+10)/7.5)=0 ");
disp("which gives:");
disp("K=16.25");
K=16.25;
k=16.25
a=7.5*s^2+26.25//intersection of root locus with s plane
r=roots(a)
g=k/((s^2+2*s+5)*(s^2+2*s+2))
G=syslin('c',g)
evans(g,200)
xgrid(2)
disp(r,"the point of intersection of root locus with imaginary axis =")
