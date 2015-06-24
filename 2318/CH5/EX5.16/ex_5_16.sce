//Example 5.16 //MAGNETIC FORCE ,FLUX DENSITY AND RELATIVE PERMEABILITY
clc;
clear;
close
k=1;//micro-C
th=100;//turns
r=5000;//ohm
n2=350;//turns
as=10;//cm^2
b=((k*th*r*10^-6)/(2*n2*as*10^-4));//Wb/m^2
disp(b,"magnetic flux is ,(Wb/m^2)=")
n1=100;//turns
i=4;//A
l=100;//cm
H=(n1*i)/(l*10^-2);//AT/m^2
disp(H,"flux density is,(AT/m^2)=")
mo=4*%pi*10^-7;//
ur=b/(mo*H);//
disp(ur,"relative permeability is,=")
