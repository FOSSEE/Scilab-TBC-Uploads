clc
clear

//input
//three resistors are connected in delta
r=30;//resistance of each resistor in ohms
v=240;//supply voltage in volts
f=50;//supply frequency in hertz

//calculations
ip=v/r;//phase current in amperes
il=ip*(3^0.5);//line current in amperes

//output
mprintf('the phase and line currents are %3.0f A and %3.1f A respectively',ip,il)
