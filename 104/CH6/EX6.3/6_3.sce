//rouths tabulations to determine stability
s=%s;
m=2*s^4+s^3+3*s^2+5*s+10;
disp(m)
r=coeff(m)
n=length(r)
routh=routh_t(m) //This Function generates the Routh table
disp(routh,"rouths tabulation=")
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
