//caption:value_of_K_of_characterstics_eq
//example 7.5.7.(b)
//page 207
s=%s;
syms K s1;
CH=s^3+10*s^2+18*s+K
s=s1-1;
CH=eval(CH);
CH=simple(CH);
disp('=0',CH,"characterstics_eq,CH=");
c0=coeffs(CH,'s1',0);
c1=coeffs(CH,'s1',1);
c2=coeffs(CH,'s1',2);
c3=coeffs(CH,'s1',3);
b=[c0 c1 c2 c3]
n=4;
routh=[b([4,2]);b([3,1])];
routh=[routh;-det(routh)/routh(2,1),0]
t=routh(2:3,1:2)
routh=[routh;-det(t)/t(2,1),0]
disp(routh,"routh=")
disp("for given system to be stable:");
disp("((-(K-16))/7)>0 and K-9>0");
disp("which gives:");
disp("9<K<16");
