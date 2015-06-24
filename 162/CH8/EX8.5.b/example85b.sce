//Example 8.5b
clc;
// Define the polynomial
s=poly(0,"s");
p=1+s+2*s^2+3*s^3+6*s^4+s^5;
// Calculate the routh of above polynomial
r=routh_t(p);
disp(r,"Routh array=");
A=r(:,1);
c=0;
x1=0;
eps=0;
for i=1:6
     x1=A(i,1);
     if x1<0
         c=c+1;
     end
end
   if(c>=1) then
       printf("system is unstable");
   else 
       printf("system is stable");
   end
x=roots(p);