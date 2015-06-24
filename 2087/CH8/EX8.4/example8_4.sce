

//example 8.4
//calculate hydrodynamic pressure on10m,40m and 100m from top
clc;funcprot(0);
//given
H=100;              //heigth of dam
wb=73;              //width of base of dam
wt=7;               //width of top of dam
l=1;                //length of dam
hw=98;              //heigth of water in dam
hsu=90;             //heigth of slope on downstream side
s=1/0.7;            //slope on downstream side
gammad=24;          //unit weigth of dam
gammaw=9.81;        //unit weigth of water
E=2.05D7;           //modulus of elasticity

//at 10m from top
y=8;
alphah=0.1;
Cm=0.72;
Cy=(Cm/2)*((y*(2-y/hw)/hw)+(y*(2-y/hw)/hw)^0.5);
p10=Cy*alphah*gammaw*hw;
F10=0.726*p10*y;
Mp10=0.299*p10*y^2;

//at 40m from top
y=38;
alphah=0.1;
Cm=0.72;
Cy=(Cm/2)*((y*(2-y/hw)/hw)+(y*(2-y/hw)/hw)^0.5);
p40=Cy*alphah*gammaw*hw;
F40=0.726*p40*y;
Mp40=0.299*p40*y^2;

//at 100m from top
y=98;
alphah=0.1;
Cm=0.72;
Cy=(Cm/2)*((y*(2-y/hw)/hw)+(y*(2-y/hw)/hw)^0.5);
p100=Cy*alphah*gammaw*hw;
F100=0.726*p100*y;
Mp100=0.299*p100*y^2;
p10=round(p10*1000)/1000;
F10=round(F10*1000)/1000;
Mp10=round(Mp10*10)/10;
p40=round(p40*1000)/1000;
F40=round(F40*1000)/1000;
Mp40=round(Mp40*10)/10;
p100=round(p100*100)/100;
F100=round(F100*1000)/1000;
Mp100=round(Mp100*10)/10;
mprintf("\nHydrodynamic Forces:\nAt 10m from top: P=%f KN/square m;F=%f KN;M=%f KN-m.\nAt 40m from top: P=%f KN/square m.;F=%f KN;M=%f KN-m.\nAt 100m from top: P=%f KN/square m;F=%f KN;M=%f KN-m.",p10,F10,Mp10,p40,F40,Mp40,p100,F100,Mp100);

//vertical component of reservior water on horizontal section
s1=3/60;
Wh=(F100-F40)*s1;
Wh=round(Wh*100)/100;
mprintf("\n\nvertical component of reservior water on horizontal section=%f kN/m.",Wh);
