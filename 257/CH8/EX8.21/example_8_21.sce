s=%s
P=s^6+s^5+5*s^4+s^3+2*s^2-2*s-8
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
    printf("system has %d roots in RHS",c)
  else printf("no roots in RHS")
  end
  k=0

R=(sqrt(roots(routh(3,:))))                   //real part of the roots//
disp("s is")
disp(R)
for(i=1:3)
       if(real(R(i,1)) == 0)
           k=k+1
        end
end

 printf("%d is in the imaginary axis and ",k)          //conjugate pairs//
 printf(" %d roots are in LHS",6-k-c)                     //out of 6 roots//
  