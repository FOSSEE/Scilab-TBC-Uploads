//bilinear transformation method
r=%s
//p=z^3+5.94*z^2+7.7*z-0.368
//substituting z=(1+r)/(1-r) we get
m=3.128*r^3-11.47*r^2+2.344*r+14.27
x=coeff(m)
n=length(x)
routh=routh_t(m)
disp(routh,"rouths tabulations")
c=0;
for i=1:n
if (routh(i,1)<0) then 
c=c+1
end
end
if (c>=1) then
printf("system is unstable")
else printf("system is stable")
end