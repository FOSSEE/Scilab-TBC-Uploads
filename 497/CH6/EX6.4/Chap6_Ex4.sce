//Kunii D., Levenspiel O., 1991. Fluidization Engineering(II Edition). Butterworth-Heinemann, MA, pp 491

//Chapter-6, Example 4, Page 159
//Title: Reactor Scale-up for Geldart A Catalyst
//==========================================================================================================
clear
clc

//INPUT
dtb=20;//ID of bench-scale reactor
dtp=1;//ID of pilot reactor
dpbar=52;//Average particle size in micrometer
ephsilonm=0.45;//Void fraction for fixed bed
ephsilonmf=0.50;//Void fraction at minimum fluidization condition
ephsilonmb=0.60;//Void fraction 
uo=30;//Superficial gas velocity in cm/s
Lmb=2;//Length of fixed bed in m
umf=0.33;//Velocity at minimum fluidization condition in cm/s
umb=1;//Velocity at in cm/s
db=3;//Equilibrium bubble size in cm
g=9.80;//Acceleration due to gravity in m/s^2
pi=3.142857;

//CALCULATION
ubr=0.711*(g*db/100)^0.5;//Rise velocity of bubble using Eqn.(7)

//Bubble velocity for the bench unit
ubb1=1.55*(((uo-umf)/100)+14.1*((db/100)+0.005))*((dtb/100)^0.32)+ubr;//Bubble velocity using Eqn.(11)
si=1;
ubb2=si*((uo-umf)/100)+(3.2*((dtb/100)^(1/3)))*ubr;//Bubble velocity using Eqn.(9)
ubb=(ubb1+ubb2)/2;//Average bubble velocity

//Bubble velocity for the pilot unit
ubp1=1.55*(((uo-umf)/100)+14.1*((db/100)+0.005))*(dtp^0.32)+ubr;//Bubble velocity using Eqn.(11)
si=1;
ubp2=si*((uo-umf)/100)+(3.2*(dtp^(1/3)))*ubr;//Bubble velocity using Eqn.(9)
ubp=(ubp1+ubp2)/2;//Average bubble velocity

//Rise velocity of upflowing emulsion
ueb=ubb-ubr;//For the bench unit
uep=ubp-ubr;//For the pilot unit

//Scale-Up Alternative 1.
dteb=20;//Effective bubble diameter
dib=[5;10;15;20];//Different outside diameters
n=length(dib);
i=1;
while i<=n
    li(i)=sqrt(((pi*dib(i)*dteb)/4)+((pi/4)*(dib(i))^2));//Pitch using Eqn.(13)
    i=i+1;
end    

//Scale-Up Alternative 2.
Lmp=Lmb*(ubp/ubb);//Static bed height of commercial unit
dtep=100;//Effective bubble diameter
dip=[10;15;20;25];//Different outside diameters
m=length(dip);
i=1;
while i<=m
    lip(i)=sqrt(((pi*dip(i)*dtep)/4)+(pi/4)*dip(i));//Pitch using Eqn.(13)
    i=i+1;
end    

//Height of Bubbling beds
//For bench unit
deltab=((uo/100)-(umb/100))/(ubb-(umb/100));//Fraction of bed in bubbles using Eqn.(28)
ephsilonfb=deltab+(1-deltab)*ephsilonmb;//Void fraction of bubbling bed using Eqn.(20)
Lfb=Lmb*(1-ephsilonm)/(1-ephsilonfb);//Hieght of bubbling bed usnig Eqn.(19)
//For pilot unit
deltap=((uo/100)-(umb/100))/(ubp-(umb/100));//Fraction of bed in bubbles using Eqn.(28)
ephsilonfp=deltap+(1-deltap)*ephsilonmb;//Void fraction of bubbling bed using Eqn.(20)
Lfp=Lmp*(1-ephsilonm)/(1-ephsilonfp);//Hieght of bubbling bed usnig Eqn.(19)

//OUTPUT
mprintf('\nRise velocity of bubble=%fm/s',ubr);
printf('\nFor the bench unit');
mprintf('\n\tWith Eqn.(11), Rise velocity=%fm/s',ubb1);
mprintf('\n\tWith Werthers procedure, Rise velocity=%fm/s',ubb2);
mprintf('\n\tAverage rise velocity=%fm/s',ubb);
mprintf('\n\tRise velocity of upflowing emulsion=%fm/s',ueb);
printf('\nFor the pilot unit');
mprintf('\n\tWith Eqn.(11), Rise velocity=%fm/s',ubp1);
mprintf('\n\tWith Werthers procedure, Rise velocity=%fm/s',ubp2);
mprintf('\n\tAverage rise velocity=%fm/s',ubp);
mprintf('\n\tRise velocity of upflowing emulsion=%fm/s',uep);
printf('\nScale-Up Alternative 1.');
printf('\n\tOuter diameter of tube(cm)');
printf('\tPitch(cm)');
n=length(dib);
j=1;
while j<=n
    mprintf('\n\t\t%f',dib(j));
    mprintf('\t\t\t%f',li(j));
    j=j+1;
end
printf('\n\tSuitable arrangement');
mprintf('\n\t\tOuter Diameter=%fcm\tPitch:Diameter ratio=%f',dib(2),(li(2)/dib(2)));
printf('\nScale-Up Alternative 2.');
mprintf('\n\tStatic bed height for commercial unit=%fm',Lmp);
printf('\n\tOuter diameter of tube(cm)');
printf('\tPitch(cm)');
n=length(dip);
j=1;
while j<=n
    mprintf('\n\t\t%f',dip(j));
    mprintf('\t\t\t%f',lip(j));
    j=j+1;
end
printf('\n\tSuitable arrangement');
mprintf('\n\t\tOuter Diameter=%fcm\tPitch:Diameter ratio=%f',dip(2),(lip(2)/dip(2)));
printf('\n\n\t\t\t\tFraction of bed in bubbles\tVoid fraction of bed\tStatic bed height(m)\tHeight of bubbling bed(m)');
printf('\n\t\t\t\t---------------------------------------------------------------------------------------------------------');
mprintf('\nBench unit\tID=%fm\t%f\t\t\t%f\t\t%f\t\t%f',dtb/100,deltab,ephsilonfb,Lmb,Lfb);
mprintf('\nCommercial unit\tID=%fm\t%f\t\t\t%f\t\t%f\t\t%f',dtp,deltap,ephsilonfp,Lmp,Lfp);

//====================================END OF PROGRAM ======================================================