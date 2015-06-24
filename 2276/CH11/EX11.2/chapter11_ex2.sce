clc
clear

//input
va1=125;//anode voltage in volts
va2=100;//anode voltage in volts for which another curve is obtained
vg1=0;//grid voltage in volts
vg2=-1;//grid voltage in volts
//given scale is vertical scale: anode current 1mm=0.0002A and horizontal scale : anode voltage 1mm=0.1V
v=0.1;//voltage in volts from scale
//from given data
//for vg1 and va2
ia11=4.8;//current in milli amperes
ia12=3.2;//current in milli amperes
//for vg2 and va1
ia21=6.625;//current in amperes
ia22=5.0;//current in amperes

//calculations
ra=(va1-va2)/(ia21-ia11);//anode slope resistance in kilo ohms
gm=(ia21-ia22)/(vg1-vg2);//mutual conductance in millisiemens
u=(va1-va2)/(v-vg2);//amplification factor 

//ouput
mprintf('at the operational point the parameters of the valve are %3.1f kohms,%3.3f mS and %3.1f.',ra,gm,u)
