clear;
clc;

printf("Example 10.2\n");

th=[0 0 3 7 22 32 46 55 80 106];      //Time in hours
tm=[0 26 5 36 16 38 50 25 22 25];     //Time in min

//Conversion to kilo seconds
for i=1:10
    tm(i)=tm(i)*60;
    th(i)=th(i)*3600;
    tim(i)=(tm(i)+th(i))/1000;
end

L=[0 2.5 12.9 23.2 43.9 54.7 67.0 73.8 90.3 104.8];   //in mm

Lo=L(1);

//Calculations are done as indicated in the procedure
//To obtain the values of x and y as below
//For plotting x and t axis of graph
x=L-Lo;

y(1)=0;
for j=2:10
    y(j)=tim(j)/(L(j)-Lo);
end

plot2d(x,y);
plot(x,y,'+');
xtitle('t/(L-L0) vs (L-L0)','(L-L0) in mm','t/(L-L0) in ks/mm^2');

//Calculation of slope
s=(y(4)-y(3))/(x(4)-x(3))*10^3*10^6;
printf("\nSlope is %.2e sec/m^2\n",s);

Vl=22.4;                 //Molar volume in litres
den=1540;                //Density in kg/m^3
T0=273;
T=321;
vp=37.6;                 //vapour pressure in kPa
P0=101.3;                //PRessue in kPa
M=154;

Ct=T0/(Vl*T);
Ca=(vp*Ct)/P0;

Cb1=Ct;
Cb2=(P0-vp)*Ct/P0;
Cbm=(Cb1-Cb2)/log(Cb1/Cb2);

//Diffusivity calculation
D=den*Cbm/(2*M*Ca*Ct*s);
printf("\nDiffusivity is %.2e m^2/s\n",D);

//End
