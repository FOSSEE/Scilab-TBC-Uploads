clear
clc
x=poly([0],'x');
x1=poly([0],'x1');
x2=poly([0],'x2');
x3=poly([0],'x3');
x4=poly([0],'x4');
x5=poly([0],'x5');
x6=poly([0],'x6');
p=x^3-6*(x^2)+5*x+8
disp("the roots of above equation are ")
roots(p)
disp("let ")
x1=-0.7784571  
x2=2.2891685  
x3=4.4892886  
disp(" now, since we want equation whose sum of roots is 0.sum of roots of above equation is 6,so we will decrease")
disp("value of each root by 2 i.e. x4=x1-2 ")
x4=x1-2  
disp("x5=x2-2") 
x5=x2-2  
disp("x6=x3-2")
x6=x3-2
disp("hence,the required equation is (x-x4)*(x-x5)*(x-x6)=0 -->")
p1=(x-x4)*(x-x5)*(x-x6)