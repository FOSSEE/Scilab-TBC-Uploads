//caption:value_of_K_in_terms_of_T1_and_T2
//example 7.5.8
//page 207
s=%s;
syms K T1 T2;
m=s*(s*T1+1)*(s*T2+1)
G=K/m;
CH=1+G;
disp("on simplyfying CH")
CH=m+K;
CH=simple(CH);
disp('=0',CH,"characterstics_eq,CH=");
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
disp("K>0 and (-(K*T1*T2-T2-T1)/(T2+T1))>0");
disp("which gives:");
disp("0<K<((1/T1)+(1/T2))");