clc 
// Variable Initiallization
Vm=220 //armature voltage in volts 
f=50 //frequency in Hz
Ra=10 //armature resistance in ohm
Lr=50e-3 //circulating inductance in mH
a1=30
a2=150

//solution
w=2*%pi*f
Em=sqrt(2)*220 //voltage in volts
cosa1=cosd(a1)
cosa2=cosd(a2)
Irmax1=((2*Em)/(w*Lr))*(1-cosa1)
Irmax2=((2*Em)/(w*Lr))*(1-cosa2)
Ip=(Em/Ra)
I1=Ip+Irmax1
I2=Ip+Irmax2
printf('\n\n Peak Current of Converter 1=%0.1f Amp\n\n',I1)
printf('\n\n Peak Current of Converter 2=%0.1f Amp\n\n',I2)
