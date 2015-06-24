//value//
s=%s;
H=syslin('c',1/((s+1)*s*(s+3)));
evans(H,100)
syms k;
m=s^3+6*s^2+8*s+k;
 cof_a_0 = coeffs(m,'s',0);
    cof_a_1 = coeffs(m,'s',1);
    cof_a_2 = coeffs(m,'s',2);
    cof_a_3 = coeffs(m,'s',3);
    r=[cof_a_0 cof_a_1 cof_a_2 cof_a_3] 

n=length(r);
routh=[r([4,2]);r([3,1])];
routh=[routh;-det(routh)/routh(2,1),0];
t=routh(2:3,1:2); //extracting the square sub block of routh matrix
routh=[routh;-det(t)/t(2,1),0]
disp(48,"K(marginal)=")
disp('=0',(6*s^2)+k,"auxillary equation")
k=48;
s=sqrt(-k/6);
disp(s,"s=")
