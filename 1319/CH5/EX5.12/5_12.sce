// To determine all day efficiency

clc;
clear;

p=15*(10^3);
t1=12;
t2=6;
t3=6;

pf1=0.5;
pf2=0.8;
pf3=0.9;

x=poly([0 1],'x','c');

nm=0.98; // Max Efficiency

y=(nm*(p+(2*x)))-p;

x=roots(y); // To find the iron loss or copper loss at unity p.f for maximum efficiency

Pil=x; // Iron loss

Pc=x; // Copper Loss at unity p.f for maximum efficiency

deff('a=culoss(b,c)','a=b*Pc*((c/(p/1000))^2)');

Pc1=culoss(12,(2/pf1)); // Total Copper Loss for 12hrs - 2 kW at p.f 0.5
Pc2=culoss(6,(12/pf2)); // Total Copper Loss for 6hrs - 12 kW at p.f 0.8
Pc3=culoss(6,(18/pf3)); // Total Copper Loss for 6hrs - 18 kW at p.f 0.9

Po=((12*2)+(6*12)+(6*18))*(10^3);// Power Output

eff=Po*100/(Po+(Pc1+Pc2+Pc3)+(24*Pil));

// Note the iron loss has to be considered to calculate the Efficiency, Text Error

printf('The all day effciency = %f percent \n',eff)

