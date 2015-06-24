//example 6.12
//Trapezoidal and Simpson's rule
//page 230
clc;clear;close;
deff('y=f(x)','y=sqrt(1-x^2)');
 k=10:10:50
 for i=1:length(k)
     T_area(i)=0,S_area(i)=0;
   h=1/k(i);
    x=0:h:1
    l=length(x);
    for j=1:l
        y(j)=f(x(j));
    end
    for j=1:l
    if j==1|j==l then
       T_area(i)=T_area(i)+y(j)
   else
       T_area(i)=T_area(i)+2*y(j)
    end
    
end
T_area(i)=T_area(i)*(h/2);
for j=1:l
    if j==1|j==l then
       S_area(i)=S_area(i)+y(j)
 
  elseif (modulo(j,2))==0 then
           S_area(i)=S_area(i)+4*y(j)
       
   elseif (modulo(i,2))~=0 then
          S_area(i)=S_area(i)+2*y(j) 
           end
    end
S_area(i)=S_area(i)*(h)/3;
end
printf(' no of subintervals      Trapezoidal Rule       Simpsons Rule\t \n \n')
for i=1:length(k)
printf(' %0.9g                          %0.9g                  %0.9g           \n ',k(i),T_area(i),S_area(i));

end


