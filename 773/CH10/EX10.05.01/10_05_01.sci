//equation//
ieee(2)
s=%s;
m=s^4+6*s^3+21*s^2+36*s+20
r=coeff(m)
n=length(r);
routh=[r([5,3,1]);r([4,2]),0]
routh=[routh;-det(routh(1:2,1:2))/routh(2,1),-det(routh(1:2,2:3))/routh(2,2),0];
routh=[routh;-det(routh(2:3,1:2))/routh(3,1),-det(routh(2:3,2:3))/routh(3,2),0];
routh=[routh;-det(routh(3:4,1:2))/routh(4,1),0,0];
disp(routh,"routh=")
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
  
  
