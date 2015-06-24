clc
clear

//input
v1=240;//voltage of a d.c. shunt motor in volts
ra=1;//armature current in ohms of a d.c. shunt motor
rf=240;//field current in ohms of a d.c. shunt motor
ifl=20;//full load current in amperes
w=200;//speed in rad/s
v2=200;//reduced voltage in volts

//calculations
//flux/pole is assumed to be proportional to the field current
//for a 240V supply
E1=v1-(ifl*ra);//induced e.m.f. in volts
i=ifl*(v1/v2);//new current in amperes
E2=v2-(i*ra);//induced e.m.f. for new current in volts
W=w*(E2/E1)*(i/ifl);//new speed in rad/s

//output
mprintf('with the reduced voltage the motor will run at %3.0f rad/s',W)
