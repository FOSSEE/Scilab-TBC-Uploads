//equation//
ieee(2);
syms s T;
m=s^2+(2-T)*s+1
cof_a_0 = coeffs(m,'s',0);
cof_a_1 = coeffs(m,'s',1);
cof_a_2 = coeffs(m,'s',2);
r=[cof_a_0 cof_a_1 cof_a_2] 
n=length(r);
routh=[r([3,1]);r(2),0];
routh=[routh;-det(routh)/routh(2,1),0];
disp(routh,"routh=")
