//equation//
ieee(2);
syms  s k;
m=s^4+6*s^3+10*s^2+8*s+k;
cof_a_0 = coeffs(m,'s',0);
cof_a_1 = coeffs(m,'s',1);
cof_a_2 = coeffs(m,'s',2);
cof_a_3 = coeffs(m,'s',3);
cof_a_4 = coeffs(m,'s',4);
r=[cof_a_0 cof_a_1 cof_a_2 cof_a_3  cof_a_4] 
n=length(r);
routh=[r([5,3,1]);r([4,2]),0]
routh=[routh;-det(routh(1:2,1:2))/routh(2,1),-det(routh(1:2,2:3))/routh(2,2),0];
routh=[routh;-det(routh(2:3,1:2))/routh(3,1),-det(routh(2:3,2:3))/routh(3,2),0];
routh=[routh;-det(routh(3:4,1:2))/routh(4,1),0,0];
disp(routh,"routh=")

 
