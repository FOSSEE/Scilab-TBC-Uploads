clc
clear

//input
i=0.4;//no load current in amperes
pf=0.25;//lagging power factor
v=250;//supply voltage in volts
f=50;//supply frequency in hertz

//calculations
ie=i*pf;//loss component of no load current in amperes
im=((i^2)-(ie^2))^0.5;//magnetizing component in amperes
p=v*ie;//no load power loss in watts

//output
mprintf('the magnetising current is %3.3fA and the no load loss is %3.0f W',im,p)
