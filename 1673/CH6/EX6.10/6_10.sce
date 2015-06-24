//example 6.10
//integration by trapezoidal and simpson's method
//page 228
clc;clear;close
deff('y=f(x)','y=1/(1+x)');
h=0.5;
x=0:h:1;
l=length(x);
for i=1:l
    y(i)=f(x(i));
end
area=0;//trapezoidal method
for i=1:l
    if i==1|i==l then
       area=area+y(i)
   else
       area=area+2*y(i)
    end
end
area=area*(h/2);
printf('area bounded by the curve by trapezoidal method with h=%f is %f\n \n',h,area);
area=0;//simpson 1/3rd rule
for i=1:l
    if i==1|i==l then
       area=area+y(i)
 
  elseif (modulo(i,2))==0 then
           area=area+4*y(i)
       
   elseif (modulo(i,2))~=0 then
          area=area+2*y(i) 
           end
    end
area=(area*h)/3;
printf('area bounded by the curve by simpson 1/3rd method with h=%f is %f\n \n',h,area);
h=0.25;
x=0:h:1;
l=length(x);
for i=1:l
    y(i)=f(x(i));
end
area=0;//trapezoidal method
for i=1:l
    if i==1|i==l then
       area=area+y(i)
   else
       area=area+2*y(i)
    end
end
area=area*(h/2);
printf('area bounded by the curve by trapezoidal method with h=%f is %f\n \n',h,area);
area=0;//simpson 1/3rd rule
for i=1:l
    if i==1|i==l then
       area=area+y(i)
 
  elseif (modulo(i,2))==0 then
           area=area+4*y(i)
       
   elseif (modulo(i,2))~=0 then
          area=area+2*y(i) 
           end
    end
area=(area*h)/3;
printf('area bounded by the curve by simpson 1/3rd method with h=%f is %f\n \n',h,area);
h=0.125;
x=0:h:1;
l=length(x);
for i=1:l
    y(i)=f(x(i));
end
area=0;//trapezoidal method
for i=1:l
    if i==1|i==l then
       area=area+y(i)
   else
       area=area+2*y(i)
    end
end
area=area*(h/2);
printf('area bounded by the curve by trapezoidal method with h=%f is %f\n \n',h,area);
area=0;//simpson 1/3rd rule
for i=1:l
    if i==1|i==l then
       area=area+y(i)
 
  elseif (modulo(i,2))==0 then
           area=area+4*y(i)
       
   elseif (modulo(i,2))~=0 then
          area=area+2*y(i) 
           end
    end
area=(area*h)/3;
printf('area bounded by the curve by simpson 1/3rd method with h=%f is %f\n \n',h,area);





