// calculating percentage limiting error
clc;
As = 150;
Er=0.01;
dA=As*Er;
As1=75;
Er=(dA/As1)*100;
disp(Er,'Percentage limiting error =');
