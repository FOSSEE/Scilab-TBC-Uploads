//Transport Processes and Seperation Process Principles
//Chapter 7
//Example 7.1-1
//Principles of Unsteady state and convective mass transfer
//given data
//si units
c0=0.1;//initial concentration
c1=0;//final concentration
K=1;//assumed as 1 
Dab=4.72/(10^10);//diffusivity
t1=10*3600;//time take
x1=0;
xc=10.6/(2*1000);
n1=x1/xc;
X1=(Dab*t1/(xc^2));
Y1=0.275;//from graph
ci=c1-(Y1*((c1/K)-c0));//graph intercept
m=0;
mprintf("the concentration at i) the centre is %f kg mol/m3",ci)
x2=2.54/1000;
n2=x2/xc;
X=(Dab*t1/(xc^2));
Y2=0.172;//from graph
cii=c1-(Y2*((c1/K)-c0));
m=0;
mprintf(" the concentration at i) midpoint of the slab is %f kg mol/m3",cii)
x3=2.54/1000;
n2=x1/xc;
X3=X1/(0.5*0.5);
Y3=0.002;//from graph
ciii=c1-(Y3*((c1/K)-c0));
m=0;
mprintf(" the concentration at iii) haLVING thickness is %f kg mol/m3",ciii)
