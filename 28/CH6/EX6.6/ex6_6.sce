s=%s;
syms K
p=s^2-(K+2)*s+((2*K)+5)
cof_a_0=coeffs(p,'s',0);
cof_a_1=coeffs(p,'s',1);
cof_a_2=coeffs(p,'s',2);
r=[cof_a_0 cof_a_1 cof_a_2]
n=length(r);
routh=[r([3,1]);r(2),0];
routh=[routh;-det(routh)/routh(2,1),0];
disp(routh,"routh=")
// for system to be stable
routh(2,1)>0
K<-2;
routh(3,1)>0
K>-2.5;
disp("For stable system, -2>K>-2.5")
// for limited stability
routh(2,1)=0
K=-2
routh(3,1)=0
K=-2.5
disp("For limted stable system K=-2 and K=-2.5")
// for unstable system
disp("For unstable system K<-2 or K>-2.5")
roots(p) // gives the roots of the polynomial m
// for critically damped case
g=(K+2)^2-4*((2*K)+5)
roots(g)
// for stablity K=6.47 is unstable
// for critical damping K=-2.47
disp("For underdamded case, -2>K>-2.47")
disp("for overdamped case, -2.47>K>-2.5")
