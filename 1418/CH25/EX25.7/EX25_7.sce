//EXAMPLE 25.7
//COUPLED COILS

clc;
funcprot(0);

//Variable Initialisation
x=poly(0,"x");
L11=1+(1/x);
L22=0.5+(1/x);
L12=1/x;
L21=1/x;
ic1=20;.........//First coil is excited by constant current in Amperes
ic2=-10;.........//Second coil is excited by constant current in Amperes
x1=0.5;........//Displacement in Centi Meter
x2=1;...........//Displacement in Centi Meter

Wfd=((1/2)*L11*ic1^2)+(L12*ic1*ic2)+((1/2)*L22*ic2^2);........//Function of mechanical work done 
F1=(-1)*derivat(Wfd);..........//Function for energy stored
disp(F1,"Energy stored :");
deff('y=f(x)','y=50/(x^2)');
dWmech=intg(0.5,1,f);.................//Mechanical work if x ranges from 0.5 to 1.0cm in Joules
disp(dWmech,"(a).Mechanical work if x ranges from 0.5 to 1.0cm in Joules:");

y1=(L11*ic1)+(L12*ic2);........//Leakage flux for coil 1;
disp(y1,"(b).Function for leakage flux for coil 1");
y1x1=20+10/(x1);....//at x1
y1x2=20+10/(x2);....//at x2
dwelec1=ic1*(y1x2-y1x1);........//Energy supplid by coil 1 in Joules
disp(dwelec1,"Energy supplid by coil 1 in Joules:");


y2=(L12*ic1)+(L22*ic2);.......//Leakage flux for coil 2;
disp(y2,"Leakage flux for coil 2");
y2x1=-5+10/(x1);....//at x1
y2x2=-5+10/(x2);....//at x2
dwelec2=ic2*(y2x2-y2x1);........//Energy supplid by coil 1 in Joules
disp(dwelec2,"Energy supplid by coil 2 in Joules:");
