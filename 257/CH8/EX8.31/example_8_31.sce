syms s K
G=(10+s)*K/(s^2*(s^2+2*s+10))
H=1

Ka=limit(s^2*G*H,s,0)
disp(Ka, " Ka = ")
Ess=0.1        //given
K=1/Ess           //A=1
disp(K,"K=")

s=%s
F=s^4+2*s^3+10*s^2+10*s+100

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
