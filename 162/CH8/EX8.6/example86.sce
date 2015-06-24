//Example 8.6
clc;
// Define the polynomial
s=poly(0,"s");
p=1+3*s+8*s^2+4*s^3+2*s^4+s^5;
// Calculate the routh of above polynomial
r=routh_t(p);
A=r(:,1);
c=0;
x=0;
for i=1:6
    x=A(i,1);
    if x<>0
        c=c+1;
    end
end
   if(c>=1) then
       printf("system is unstable");
   else 
       printf("system is stable");
   end