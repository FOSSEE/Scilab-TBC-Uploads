//equation//
ieee(2);
syms  s k;
m=(24/100)*s^3+s^2+s+k;
cof_a_0 = coeffs(m,'s',0);
cof_a_1 = coeffs(m,'s',1);
cof_a_2 = coeffs(m,'s',2);
cof_a_3 = coeffs(m,'s',3);
r=[cof_a_0 cof_a_1 cof_a_2 cof_a_3] 
n=length(r);
routh=[r([4,2]);r([3,1])]
routh=[routh;-det(routh)/routh(2,1),0]
t=routh(2:3,1:2); //extracting the square sub block of routh matrix
routh=[routh;-det(t)/routh(3,1),0]
disp(routh,"routh=");
routh(3,1)=0  //For marginaly stable system
k=1/0.24;
disp(k,"K(marginal)=")
disp('=0',(s^2)+k,"auxillary equation")
s=sqrt(-k);
disp(s,"Frequency of oscillation(in rad/sec)=")
