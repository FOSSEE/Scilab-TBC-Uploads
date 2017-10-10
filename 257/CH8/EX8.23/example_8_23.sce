s=%s
P=s^6+2*s^5+9*s^4+16*s^3+24*s^2+32*s+16
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
  else printf("there are no roots in RHS")
  end
 disp("s is")
R=(sqrt(roots(routh(3,:))))
 disp(R)
k=0 
for(i=1:3)
 if(real (R(i,1))==0)
     k=k+1
 end
 end
 
printf("thus %d roots on imaginary axis and there are %d roots in LHS",2*(k-1),6-c-2*(k-1))