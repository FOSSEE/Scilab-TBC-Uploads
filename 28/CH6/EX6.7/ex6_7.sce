s=%s;
syms eps
p=s^5+s^4+2*s^3+2*s^2+3*s+5
r=coeff(p);
n=length(r);
routh=[r([6,4,2]);r([5,3,1])]
syms eps;
routh=[routh;eps,-det(routh(1:2,2:3))/routh(2,2),0];
routh=[routh;-det(routh(2:3,1:2))/routh(3,1),-det(routh(2:3,2:3))/routh(4,2),0];
routh=[routh;-det(routh(4:5,1:2))/routh(5,1),0,0];
disp(routh,"routh=")
// to check stability
routh(4,1)=8-limit(5/eps,eps,0);
disp(routh(4,1),"routh(4,1)=")
routh(5,1)=limit(routh(5,1),eps,0);
disp(routh(5,1),"routh(5,1)=")
printf("There are two sign changes of first column hence the system is unstable")