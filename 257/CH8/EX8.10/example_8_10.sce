s=%s
P=s^4+2*s^2+1
disp(routh_t(P)) 
r=coeff(P)
routh=routh_t(P)
n=length(r)
c=0;
for i=1:n
if (routh(i,1)<0)
c=c+1;
 end 
end
  if(c>=1)
    printf("system is unstable")
    else printf("no sign changes, so no roots in RHS")
   end
    disp("s^2 is")
    k=roots(routh(1,:))
 disp(k)
    
    disp("since, s^2 is negetive, s is purely imaginary. hence the 4 roots are on the imaginary axis")