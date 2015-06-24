clc
clear

//input
i1=9;//current taken by a resistive inductive load form supply in amperes
v=250;//supply voltage in volts
f=50;//frequency in hertz
i2=12;//current taken when a resistor is placed in parallel with the load in amperes
r=50;//resistance of the resistor placed in parallel

//calculations
ir=v/r;//current through the resistor in amperes
cosp=((i2^2)-(ir^2)-(i1^2))/(2*i1*ir);//power factor 
cosP=(ir+(i1*cosp))/i2;//power factor for whole circuit 
pc=(v*i2*cosP)/1000;//power taken by whole circuit in kilowatts
pl=(v*i1*cosp);//power taken by load in watts

//output
mprintf('the values of power and power factor for the whole circuit and the load are %3.1f kW:%3.2f (lag) and %3.0f W:%3.2f (lag) respectively',pc,cosP,pl,cosp) 
