syms s K
G=K*(s+2)/(s*(s+3)*(s^2+5*s+10))
H=1
Kv=limit(s*G*H,s,0)
disp(Kv, " Kv = ")

Ess=0.01       //given
K=15/Ess
disp(K,"K=")

s=%s
F=s^3+8*s^2+1525*s+3030

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