

//example 10.4
clc; funcprot(0);
//exapple 10.4
// Initialization of Variable
rho=998;
w0=40;//density of slurry
mu=1.01/1000;
g=9.81;
rho1=2660;//density quartz
h=0.25;
t=18.5*60;
mp=[5 11.8 20.2 24.2 28.5 37.6 61.8];
d=[30.2 21.4 17.4 16.2 15.2 12.3 8.8]/1000000;
u=h/t;
d1=sqrt(18*mu*u/g/(rho1-rho));
function[a]=inter(d,f,g,b);//interpolation linear
    for i=1:b
        if d>f(i+1)& d<=f(i)  then
            break
        else 
            continue
        end
        break
    end
    
    a=-(d-f(i+1))/(f(i)-f(i+1))*(g(i+1)-g(i))+g(i+1);
endfunction
[a]=inter(d1,d,mp,6);
phi=1-a/100;
rhot=phi*(rho1-rho)/rho1*w0+rho;
disp(rhot,"the density of suspension at depth 25cm in kg/m^3 is")
