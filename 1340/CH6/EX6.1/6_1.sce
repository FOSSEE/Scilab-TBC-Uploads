//routh hurwitz criterion for system transfer function given by:
// g(s)=1000/(s^3+10*s^2+31*s+1030)
s = poly(0,'s');
po = syslin('c',1000/(s^3+10*s^2+31*s+1030));//creates LTI system
m = denom(po);//extracts the denominator of the transfer function
co = coeff(m);//extracts the coefficients  of the denominator


 routh=[co([4,2]); co([3,1])] ;

 D = det(routh)/routh(2,1);
 routh =[routh ;-D 0];
 
 t=routh (2:3 ,1:2) ; 
 M = det(t)/t(2,1);
 routh =[routh ;-M 0];
 c=0; 
 disp(routh); 
 n = length(co);
 for i =1:n 
     if(routh(i,1)<0) then
         c= c+1;
     end
 end
 if (c>=1) then
     printf("system is unstable because there is sign change in the 1st row");
     else printf("system is stable");
 end