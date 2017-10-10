s=%s
F=s^6+3*s^5+4*s^4+6*s^3+5*s^2+3*s+2

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

disp("s^2 is")
R=roots(routh(3,:))
disp(R)

disp("as there are 2 pairs of repeated roots on the imaginary axis, the system is unstable")

