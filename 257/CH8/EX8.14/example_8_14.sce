s=%s
F=s^6+2*s^5+8*s^4+12*s^3+20*s^2+16*s+16

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
  else printf("there are no roots on RHS")
  end


R=sqrt(roots(routh(3,:)))
disp(R)

disp("non repeated roots on imaginary axis. hence system is marginally stable")

