s=%s
P=s^5-s^4-2*s^3+2*s^2-8*s+8
routh=routh_t(P)
disp(routh)
r=coeff(P)
n=length(r)
c=0;
for i=1:n
if (routh(i,1)<0)
c=c+1;
 end 
  end
  if(c>=1)
    printf("there are %d roots on RHS",c)
  else printf("there are no roots on RHS")
  end
  
  disp("s^2 is")
  disp(roots(routh(2,:)))
  
  

  