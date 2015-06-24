//caption:stability_using_Routh-hurwitz_criterion
//example 12.15
//page 529
s=%s;
syms  K
G=sym('K/(s*(s^2+s+1)*(s+5)');
H=1;
CH=(s*(s^2+s+1)*(s+5)+K)
disp('=0',CH,"characterstics_eq,CH=")
c0=coeffs(CH,'s',0);
c1=coeffs(CH,'s',1);
c2=coeffs(CH,'s',2);
c3=coeffs(CH,'s',3);
c4=coeffs(CH,'s',4);
b=[c0 c1 c2 c3 c4 ]
routh=[b([5,3,1]);b([4,2]),0]
routh=[routh;-det(routh(1:2,1:2)/routh(2,1)),K,0]
t=routh(2:3,1:2)
routh=[routh;-det(t)/t(2,1),0,0]
routh=[routh;K,0,0]
disp(routh,"routh=")
disp("for given system to be stable:");
disp("((5.1*5-6*K)/5.1)>0 and K>0");
disp("which gives:");
disp("0<K<4.25");
