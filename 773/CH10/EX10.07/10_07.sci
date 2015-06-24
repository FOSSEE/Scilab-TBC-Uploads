//equation//
s=%s;
m=s^5+2*s^4+2*s^3+4*s^2+4*s+8
routh=routh_t(m) //This Function generates the Routh table
c=0;
for i=1:n
if (routh(i,1)<0)
c=c+1;
 end 
  end
  if(c>=1)
    printf("system is unstable")
  else ("system is stable")
  end
  
  
