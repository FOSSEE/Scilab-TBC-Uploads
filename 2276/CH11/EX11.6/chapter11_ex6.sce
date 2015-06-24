clc
clear

//input
rc=50;//resistance of the coil in ohms
lc=0.0005;//inductance of the coil in henry
//coil is connected in parallel with a capcitor
fr=0.5*(10^6);//resonance frequency in hertz
vl=1.5;//voltage across the load in volts
rs=50000;//slope resistance in ohms of the triode
u=25;//amplification factor of the triode

//calculations
c=(lc*(10^12))/((rc^2)+(2*%pi*fr*lc)^2);//capacitance in picofarad
rl=(lc*(10^9))/(rc*c);//resistance of load in kiloohms
a=(u*rl)/(rc+rl);//voltage amlification 
e0=a*vl;//a.c. voltage across load in volts

//output
mprintf('at a frequency of 0.5MHz the a.c. voltage across the load will be %3.1fV in antiphase to the 1.5V in the grid circuit',e0)
