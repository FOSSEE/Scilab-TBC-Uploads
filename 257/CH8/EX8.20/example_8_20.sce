s=%s
syms K
m=s^4+6*s^3+30*s^2+60*s+K
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
disp(routh,"rouths tabulation=")
routh(3,1)=0  //For marginaly stable system

disp("for all closed loop poles to left of -1")
s=%s
syms K
m=s^4+2*s^3+18*s^2+14*s+K-35
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
disp(routh,"rouths tabulation=")
routh(3,1)=0  //For marginaly stable system