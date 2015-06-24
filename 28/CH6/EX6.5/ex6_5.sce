s=%s;
syms K
p=(1+K)*s^2+((3*K)-0.9)*s+(2K-1)
cof_a_0=coeffs(p,'s',0);
cof_a_1=coeffs(p,'s',1);
cof_a_2=coeffs(p,'s',2);
r=[cof_a_0 cof_a_1 cof_a_2]
n=length(r);
routh=[r([3,1]);r(2),0];
routh=[routh;-det(routh)/routh(2,1),0];
disp(routh,"routh=")
// for no root in right half
// routh(1,1),routh(2,1),routh(3,1)>0
routh(1,1)=0
routh(2,1)=0
routh(3,1)=0
// combining the result
K=0.9/3;
disp(K,"For no roots in right half=")
// for 1 pole in right half i.e. one sign change
//routh(1,1)>0 n routh(3,1)<0
disp("For one pole in right half, -1<K<0.05")
// for 2 poles in right half
// routh(2,1)<0 n routh(3,1)>0
disp("For 2 poles in right half, 0.05<K<0.3")