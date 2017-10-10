clc 
//variable initialization
P=100e+3 //power in W
Va1=440 //Supply voltage in volts
N1=1000 //speed in rpm
N2=800 //speed in rpm
Eb1=410 //given Back EMF in volts
Vrms=415 //RMS voltage in volts
f=50 //Supply frequency in Hz

//solution
Eb2=Eb1*(N2/N1)
Ia1=P/Va1
Ra=(Va1-Eb1)/Ia1
Ia2=0.75*Ia1//At 75% of rated torque
Va2=Eb2+(Ia2*Ra)
a=acosd((Va2*%pi)/(3*sqrt(2)*Vrms))
printf('\n\n The Firing Angle=%0.1f\n\n',a)
