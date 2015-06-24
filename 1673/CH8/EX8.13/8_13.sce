//example 8.13
//milne's method
//page 320
clc;clear;close;
deff('y=f1(x,y)','y=x^2+y^2-2');
x=[-0.1 0 0.1 0.2 ];
y=[1.0900 1.0 0.8900 0.7605];
h=0.1;
for i=1:4
    Y1(i)=f1(x(i),y(i));
end
printf('   x                y                y1=x^2+y^2-2    \n\n');
for i=1:4
printf('  %0.2f           %f           %f           \n',x(i),y(i),Y1(i));
end
Y_3=y(1)+(4*h/3)*(2*Y1(2)-Y1(3)+2*Y1(4));
printf('y(0.3)=%f\n',Y_3)
Y1_3=f1(0.3,Y_3);
Y_3=y(3)+h*(Y1(3)+4*Y1(4)+Y1_3)/3;//corrected value
printf('corrected y(0.3)=%f',Y_3)