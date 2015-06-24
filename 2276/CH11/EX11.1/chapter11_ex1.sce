clc
clear

//input
va=120;//annode voltage in volts
vg1=-1;//grid voltage in volts
vg2=-2;//grid voltage for which another curve is drawn in volts
//given scale is vertical scale: anode current 1mm=0.00025A and horizontal scale : anode voltage 1mm=2.5V
//from VI characteristics
i=0.00025;//current in amperes
v=2.5;//voltage in volts
CD=4;
BD=9;
EF=34;
CE=14.5;
//calculations
ra=(CD*v)/(BD*i*1000);//anode slope resistance in kilo ohms
gm=(EF*i*1000)/(vg1-vg2);//mutual conductance in millisiemens
u=(CE*v)/(vg1-vg2);//amplification factor 

//ouput
mprintf('at the operational point the parameters of the valve are %3.2f kohms,%3.1f mS and %3.2f.',ra,gm,u)
