//caption:stability_using_Routh-hurwitz_criterion
//example 7.5.1
//page 202
clc;
s=%s;
A=s^3+4.5*s^2+3.5*s+1.5;
b=coeff(A)
n=length(b)
B=routh_t(A)
disp(B,"routh table:");
c=0;
for(i=1:n)
  if(B(i,1)<0)
    c=c+1;
  end
end
if(c>=1)
  disp("system is unstable")
else("system is stable")
end