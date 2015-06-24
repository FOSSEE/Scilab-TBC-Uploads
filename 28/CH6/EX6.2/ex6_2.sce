s=%s;
p=s^4+8*s^3+18*s^2+16*s+5
r=routh_t(p)
m=coeff(p)
l=length(m)
c=0;
for i=1:l
if (r(i,1)<0)
c=c+1;
end    
end
if(c>=1)
printf("System is unstable")
else ("Sysem is stable")
end
