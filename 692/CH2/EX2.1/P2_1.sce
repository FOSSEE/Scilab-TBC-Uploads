//EXAMPLE 2.1
//Ensemble averaging
clear ;
clc ;
n = 1:50;
clf();
figure(0)
a=gca();
a.x_location="origin";
a.y_location="origin";
   for i =1:length(n)
       s(i)=2*n(i)*((0.9)^n(i));
       d(i)=(-0.1)^n(i);       //arbitrary noise signal.
   end

M=length(n);
 
 for i =1:M
     d(i)=(-0.1)^i;
     S=sum(d);
 end
Eav=(s+S/M)';          //Ensemble average.
disp(Eav,'The output of Ensemble averaging is')
plot2d3(n,s)
plot(n,s,'r.')
xtitle('Ensemble averaging','n','Eav-s');
a.children.children.thickness=2;
a.children.children.foreground=2;
