s=%s
F=s^3+4*s^2+13*s+50

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
syms s k
G=5*k/(s*(1+s/3)*(1+s/6)*18)
H=1
Kv=limit(s*G*H,s,0)
disp(Kv, " Kv = ")

s=%s
F=s^3+9*s^2+18*s+180

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
