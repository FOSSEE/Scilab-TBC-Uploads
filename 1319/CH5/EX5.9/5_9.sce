// Regulation at full load p.f 0.8 lag

clc;
clear;

Pi=500*(10^3);// Power Input
Meff=97/100;// Max Efficiency
pf1=1;

E1=3300;
E2=500;

Po=Pi*pf1*3/4;

// Iron loss = Copper loss at maximum efficiency

x=poly([0 1],'x','c');

Pin=Po+(2*x);

xx=(Pin*Meff)-Po;

x=roots(xx); // Iron Loss = Copper Loss

I2=Po/E2;

R=x/(I2^2);

I2fl=Pi/E2;

Rfl=E2/I2fl;

// Per unit values
Rpu=R*100/Rfl;
Zpu=10;
Xpu=sqrt((Zpu^2)-(Rpu^2));

pf2=0.8; // Lagging

ang=acosd(pf2);// Positive Angle as it is lagging

perreg=(Rpu*cosd(ang))+(Xpu*sind(ang));

printf('The regulation at full load, p.f 0.8 lag = %f percent\n',perreg)
