clc
// Variable Initiallization
F=50 //Supply Frequency In Hz
Erms=230 //RMS Voltage Per Phase In Volts
L=0.015 //Inductance In Henry
A1=60 //Firing Angle
A2=120 //Firing Angle




//solution
W=2*%pi*F
Icp=((3*sqrt(2)*Erms)/(W*L))*(1-sind(A1))
printf('\n\n The Peak value of Circulating Current=%0.1f Amp\n\n',Icp)
