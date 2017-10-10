//terms in a row become infinite//
s=%s;
//P=s^5+2*s^4+3*s^3+6*s^2+2*s+1;//
//replace 's' by '1/z' to get F//
z=%z;
F=z^5+2*z^4+6*z^3+3*z^2+2*z+1
disp(routh_t(F)) 
r=coeff(F)
routh=routh_t(F)
n=length(r)
c=0;
for i=1:n
if (routh(i,1)<0)
c=c+1;
 end 
  end
  if(c>=1)
    printf("system is unstable")
  else printf("system is stable")
  end