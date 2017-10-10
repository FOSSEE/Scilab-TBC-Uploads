//Book name: Fundamentals of electrical drives by Mohamad A. El- Sharkawi
//chapter 3
//example 3.9
//edition 1
//publisher and place:Nelson Engineering
clc;
clear;
Vab=208;//source voltage in volts
Vs=Vab/3^(1/2);//rms voltage in volts
Vm=Vs*2^(1/2);//maximum peak voltage in volts
disp('a)To find maximum average voltage across the load:')
Vavemax=(3*3^(1/2)*Vm)/%pi;
disp(Vavemax,'maximum average voltage across the load')
disp('b)To find the triggering angle at the average voltage of the load:')
xold=1;//assumed value 
c=30;//constant value
x=asind((%pi/(3*sqrt(3)))-(cosd(xold+c)));
err=100;//assumed value
while(err>0.0001)
    xnew=asind((%pi/(3*sqrt(3)))-(cosd(x+c)));
    x=xnew;
    err=abs(xnew-xold);
    xold=x;
   end
disp(x,'The triggering angle in degree is')
disp('c)To find load voltage when the triggering angle is -30 degree :')
Vave=(3*3^(1/2)*Vm)/(2*%pi);
disp(Vave,'Load voltage when the triggering angle is -30 degree in volt is')
//The part (b) answer given in the book is wrong
