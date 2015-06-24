clear
clc
x=poly([0],'x');
x1=poly([0],'x1');
x2=poly([0],'x2');
x3=poly([0],'x3');
p=x^3-3*(x^2)+1
disp("the roots of above equation are ")
roots(p)
disp("let ")
x1=0.6527036  
x2=-0.5320889  
x3=2.8793852 
disp("so the equation whose roots are cube of the roots of above equation is (x-x1^3)*(x-x2^3)*(x-x3^3)=0 => ")
p1=(x-x1^3)*(x-x2^3)*(x-x3^3)