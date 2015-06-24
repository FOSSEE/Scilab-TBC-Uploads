clc
clear

//input
ia=0.002;//anode current in amperes
rl=5000;//resistance in ohms
vht=100;//anode voltage in volts

//calculations
va=vht-(ia*rl);//next anode voltage in volts to plot the characteistic curve

//output
mprintf('the next required anode voltage for plotting characteristic curve is %3.0fV',va)
