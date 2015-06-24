//caption:stability_using_Routh-hurwitz_criterion
//example 12.16
//page 530
s=%s;
syms  K
CH=s^4+2*s^3+10*s^2+(K-10)*s+K
disp('=0',CH,"characterstics_eq,CH=")
c0=coeffs(CH,'s',0);
c1=coeffs(CH,'s',1);
c2=coeffs(CH,'s',2);
c3=coeffs(CH,'s',3);
c4=coeffs(CH,'s',4);
b=[c0 c1 c2 c3 c4 ]
routh=[b([5,3,1]);b([4,2]),0]
routh=[routh;-det(routh(1:2,1:2)/routh(2,1)),K,0]
routh(3,1)=simple(routh(3,1))
t=routh(2:3,1:2)
l=simple(-det(t)/t(2,1))
routh=[routh;l,0,0]
//routh=[routh;K,0,0]
disp(routh,"routh=")
disp("for given system to be stable,following condition should be satisfied");
disp("K<30,K<22.9 and K>13.1,K>0")
disp("which gives,")
disp("13.1<K<22.9");
