clc
clear

//input
r=20;//resistance of resistor connected in series with inductor in ohms
v=240;//supply voltage in volts
f=50;//supply frequency in hertz
pdr=130;//potential drop across resistor in volts
pdl=170;//potential drop across inductor in volts

//calculations
cosp=((v*v)-(pdr^2)-(pdl^2))/(2*pdr*pdl);//power factor
i=pdr/r;//current in amperes
p=pdl*i*cosp;//power in watts

//output
mprintf('the power dissipated by the inductor is %3.0f W',p)
