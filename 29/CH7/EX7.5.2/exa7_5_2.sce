//caption:stability_using_Routh-hurwitz_criterion
//example 7.5.2
//page 202
s=%s;
A=s^3+4*10^2*s^2+5*10^4*s+2*10^6;
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
  printf("\n system is unstable")
else("system is stable")
end