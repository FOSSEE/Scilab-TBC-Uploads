s=%s

F=s^8+s^7+4*s^6+3*s^5+14*s^4+11*s^3+20*s^2+9*s+9
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
    printf("there are %d roots with positive real part as there are %d sign cganges",c+1,c+1)     //two number of sign changes
  else printf("no roots with positive real part")
  end


P=1+s^1+3*s^2+2*s^3+5*s^4+3*s^5+1*s^6
routh=routh_t(P)
disp(routh)
r=coeff(P)
n=length(r)
c=0;
for i=1:n
if (routh(i,1)<=0)
c=c+1;
 end 
  end
  if(c>=1)
    printf("there are %d roots with positive real part",c+1)
  else printf("no roots with positive real part")
  end
