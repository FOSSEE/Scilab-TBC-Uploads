s=%s;
//F=s^5+s^4+2*s^3+2*s^2+3*s+15//
//replacing 's' by '1/z' we get F//
z=%z;
F=15*z^5+3*z^4+2*z^3+2*z^2+z+1;
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
