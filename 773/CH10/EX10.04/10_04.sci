//equation//
s=%s;
m=s^3+2*s^2+3*s+10;
r=coeff(m)
n=length(r);
routh=[r([4,2]);r([3,1])];
routh=[routh;-det(routh)/routh(2,1),0];
t=routh(2:3,1:2); //extracting the square sub block of routh matrix
routh=[routh;-det(t)/t(2,1),0]
c=0;
for i=1:n
if (routh(i,1)<0)
c=c+1;
end 
end
if(c>=1)
printf("system is unstable")
else ("system is stable")
end
  
