s=%s;
syms Kv Kd Kp Kt
p=s^3+(1+(Kv*Kd))*s^2+(Kv*Kp)*s+(Kp*Kt)
cof_a_0=coeffs(p,'s',0);
cof_a_1=coeffs(p,'s',1);
cof_a_2=coeffs(p,'s',2);
cof_a_3=coeffs(p,'s',3);
r=[cof_a_0 cof_a_1 cof_a_2 cof_a_3]
n=length(r);
routh=[r([4,2]);r([3,1])]
routh=[routh;-det(routh)/routh(2,1),0]
t=routh(2:3,1:2);
routh=[routh;-det(t)/routh(3,1),0]
disp(routh,"routh=");
// for stability r(:,1)>0
// for the given table
b=routh(3,1)
disp("for stability"b,">0")

