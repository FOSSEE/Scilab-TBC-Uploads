clc 
//variable initialization
Php=100 //power in hp
P=Php*735.5 //power in Watts
Va1=440 //voltage in volts
N1=1000 //speed in rpm
N2=500 //speed in rpm
Eb1=430//Given back EMF in volts
Vrms=415 //RMS voltage in volts

//solution
Eb2=Eb1*(N2/N1)
Ia1=P/Va1
Ra=10/Ia1
Ia2=0.85*Ia1
Va2=Eb2+Ia2*Ra//At 85% load and 500 rpm
a=acosd(Va2/(1.35*Vrms))
printf('\n\n The Firing Angle=%0.1f\n\n',a)


 
