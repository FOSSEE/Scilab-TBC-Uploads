//caption:stability_using_Routh-hurwitz_criterion
//example 7.5.7.(a)
//page 207
s=%s;
syms T K
P=s*(s*(s+10)+T);
CH=sym('s^3+10*s^2+T*s+K');
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
disp("for given system to be stable:");
disp("((10*T-K)/10)>0 and K>0");
disp("which gives:");
disp("0<K<10T");
