clc
//Chapter 11:Power amplifiers
//example 11.2 page no 466
//given
Po=5//max power in watts
Rl=50//load resistance in ohm
//asumme'1:1 truns ratio transformer coupled push pull amplifier each supllying 2.5 watt'
disp('since a push pull amplifier is used, each class B amplifier will supply 2.5W')
Pomax=2.5
Vcc=sqrt(4*Rl*Po)//supply voltage
Ptmax=Pomax*(4/%pi^2)//maximum power handling requriment of the transistor
I=sqrt((4*Pomax)/Rl)//peak output current
mprintf('maximum power handling requriment of the transistor is %d W \n peak output current is %f A ',Ptmax,I)
