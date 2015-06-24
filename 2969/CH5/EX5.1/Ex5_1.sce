clc
clear
//DATA GIVEN
Ms=10000/3600;    //rate of steam flow in kg/s
//inlet to turbine
p1=60;            //pressue in bar
T1=380;           //temp. in deg.celsius

//exit from turbine, inlet to condenser
p2=0.1;           //pressue in bar
x2=0.9;           //quality
v2=200;           //velocity in m/s

//exit from condenser, inlet to pump
p3=0.09;          //pressue in bar
//it is saturated

//exit from pump, inlet to boiler
p4=70;            //pressue in bar

//exit from boiler,
p5=65;            //pressue in bar
T5=400;           //temp. in deg.celsius

//for condenser,
t1=20;            //inlet temp. in deg. celsius
t2=30;            //exit temp. in deg. celsius

//At 60 bar and 380deg. celsius, from steam tables
h1=3043.0+(3177.2-3043.0)/(400-350)*30;   //By interpolation

//At 0.1 bar, from steam tables
hf2=191.8;                        //in kJ/kg
hfg2=2392.8;                      //in kJ/kg
h2=hf2+x2*hfg2;
Pt=Ms*(h1-h2)                     //power output of the turbine in kW

//At 70 bar, from steam tables
hf4=1267.4;                       //in kJ/kg
//At 60 bar and 380deg. celsius, from steam tables
ha=(3177.2+3158.1)/2;             //By interpolation between 60 and 70 deg celsius
Q1=Ms*3600*(ha-hf4);              //heat transfer per hour in the boiler
//At 0.09 bar, from steam tables
hf3=183.3;                        //in kJ/kg
Q2=Ms*3600*(h2-hf3);              //heat transfer per hour in the condenser

//heat lost by steam=heat gained by the cooling water
//Q2=Mw*4.18*(t2-t1)
Mw=Q2/4.18/10;                    //mass of cooling water circuleted per hour in condenser

//(pi)/4*d^2=Ms*x2*vg2
//d=diameter of the pipe connecting turbine with condenser
C=200;                            //velocity of steam in m/s
vg2=14.67;                        //specific volume at 0.1 bar
d=(Ms*x2*vg2/(%pi/4)/C)^0.5;

printf(' (i) The Power output of turbine is: %4.0f kW. \n',Pt);
printf(' (ii) The Heat transfer per hour in the Boiler is: %3.2e kJ/h. \n',Q1);
printf('      The Heat transfer per hour in the Condenser is: %3.2e kJ/h. \n',Q2);
printf('(iii) The Mass of cooling water circulated per hour in the condenser is: %3.2e kg/hr. \n',Mw);
printf(' (iv) The Diameter of the pipe connecting turbine with condenser is: %1.3f m or %3.0f mm. \n',d,(d*1000));

//NOTE:
//ans of Mw(1.116*10^7) is given incorrect in the book.
//the correct ans of Mw is = 5.17*10^5 kg/h.
