clc 
//variable initialization
P=80e+3 //power in Watt
Va1=440 //voltage in volts
N1=800 //speed in rpm
N2=600 //speed in rpm
Eb1=410 //Given back emf in volts
Vrms=415 //voltage in volts

//solution
Eb2=Eb1*(N2/N1)
Ia1=P/Va1
Ra=(Va1-Eb1)/Ia1
Ia2=0.75*Ia1//As motor is operating at 75% of rated torque
Va2=Eb2+(Ia2*Ra)
a=acosd(Va2*%pi/(3*sqrt(2)*Vrms))
printf('\n\n The Triggering Angle=%0.1f\n\n',a)
