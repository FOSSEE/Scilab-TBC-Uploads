//elements in one row of rouths tabulations are all zero
s=%s;
m=s^5+4*s^4+8*s^3+8*s^2+7*s+4;
disp(m)
r=coeff(m)
n=length(r)
routh=routh_t(m)
disp(routh,"rouths tabulations=")
c=0;
for i=1:n
if (routh(i,1)<0)
c=c+1;
end 
end
if(c>=1)
printf("system is unstable")
else printf("system is marginally stable")
end