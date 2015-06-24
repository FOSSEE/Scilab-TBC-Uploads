

//example 8.3
//calculate forces induced due to earthquake
clc;funcprot(0);
//given
H=100;              //heigth of dam
wb=70;              //width of base of dam
wt=7;               //width of top of dam
l=1;                //length of dam
hw=98;              //heigth of water in dam
hsu=90;             //heigth of slope on downstream side
s=1/0.7;            //slope on downstream side
gammad=24;          //unit weigth of dam
gammaw=9.81;        //unit weigth of water
E=2.05D7;           //modulus of elasticity
//(a) Seismic coefficient method
alpha0=0.05;        //from table 8.1
alphah=2*alpha0;
alphav=0.75*alphah;
//at 10m from top
F10=integrate('alphav*168*(1-0.01*y)','y',0,10);
//at 100m below top
F100=F10+integrate('alphav*(1-0.01*y)*16.8*y','y',10,100);
mprintf("Part(a):\nAt 10m from top: F=%f kn\nAt 100m from top: F=%f kn.",F10,F100);

//(b)Response spectrum method
beta=1;
I=2;
Fo=0.25;           //from table 8.2
                  //t=Sa/g;
t=0.19;           //from fig. 8.4
alphah=beta*I*Fo*t;
alphav=0.75*alphah;
//at 10m from top
F10=integrate('alphav*168*(1-0.01*y)','y',0,10);
//at 100m below top
F100=F10+integrate('alphav*(1-0.01*y)*16.8*y','y',10,100);
F100=round(F100*100)/100;
mprintf("\nPart(b):\nAt 10m from top: F=%f kn\nAt 100m from top: F=%f kn.",F10,F100);
