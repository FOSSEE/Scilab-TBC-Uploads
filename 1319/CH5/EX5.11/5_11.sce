//Calcualte efficiencies at various loads

clc;
clear;

P=100*(10^3);// Power Input
Pc=1000;// Copper Loss
Pil=1000;// Iron Loss
pf=0.8;

deff('y=unity(x)','y=(P*100*x)/((P*x)+Pil+(Pc*(x^2)))')// Unit Power Factor
deff('y=pfactor(x)','y=(P*100*x*pf)/((P*pf*x)+Pil+(Pc*(x^2)))')// 0.8 p.f

printf('a) Unity power factor efficiencies at \n \n')
printf('i) Half of full load = %f percent \n',unity(1/2))
printf('ii) Full load = %f percent \n',unity(1))
printf('iii) (5/4) of full load = %f percent \n \n',unity(5/4))


printf('b) 0.8 power factor efficiencies at \n \n')
printf('i) Half of full load = %f percent \n',pfactor(1/2))
printf('ii) Full load = %f percent \n',pfactor(1))
printf('iii) (5/4) of full load = %f percent \n',pfactor(5/4))
