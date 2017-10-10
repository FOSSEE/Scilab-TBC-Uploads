s=%s
F=s^6+2*s^5+5*s^4+8*s^3+8*s^2+8*s+4

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
   else
       disp("s^2 is")
       k=(roots(routh(3,:)))
       disp(k)
end

if(k(2,1)==k(3,1))
    printf("repeated roots on imaginary axis. hence unstable system")