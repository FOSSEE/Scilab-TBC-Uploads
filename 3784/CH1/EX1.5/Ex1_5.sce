clc
//variable Initialization
Vm=230//Input Voltage In Volts
Ra=0.5 //Armature Resistance In Ohm
Rf=190 //Field resistace in Ohm
N=1400 //Speed Of Motor In RPM
Ka=0.8 //Motor voltage constant in V/A-rad/sec
T=50 //Load Torque In N-m

//Solution
W=(2*%pi*N)/60 //Angular Speed In rad/Sec.
//Since the maximum field voltage and current is obtained at a Firing Angle of '0'degree
af=0 //Firing Angle Of SCR In Degree
Vf=(Vm*1.414)*(1+cosd(af))*(1/%pi) //field Voltage In volts
If=Vf/Rf //Field Current In Amp.
Ia=T/(Ka*If) //Armature current in Amp.
Eb=(Ka*If*W)//this value is wrongly calculated in book
Vdc=Eb+Ia*Ra //Voltage across armature in volts
//for the semi converter fed dc motor the armature voltage is given by...
A=%pi*Vdc*(1/Vm)*(1/1.414)
aa=acosd(A-1) //slight change occurs in ans as Eb is wrongly calculated in book

//Results
printf('\n\n The field Current =%0.1f Amp\n\n',If)
printf('\n\n The firing Angle Of Armature=%0.1f Degree\n\n',aa)
//The answer provided in the textbook is wrong(2nd answer)


