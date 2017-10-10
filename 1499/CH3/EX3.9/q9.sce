s=%s;
r=%r;

p=s^5+6*s^4+15*s^3+30*s^2+44*s+24
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
else("Sysem is stable")
end
