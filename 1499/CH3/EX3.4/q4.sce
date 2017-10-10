s=%s;
p=s^6+2*s^5+2*s^4+3*s^3+5*s^2+6*s+1
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
