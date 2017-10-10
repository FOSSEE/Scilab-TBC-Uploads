clc
// Variable Initialization 
Vm=230//Supply Voltage in Volts
Ra=1//Armature circuit resistance in Ohm
I=12 //Rated current in Amp
Nr=1500 //Motor speed in Rpm
Va=210 //Motor voltage in volts
N1=1200 //Speed in RPM

//Solution
Eb=Va-(I*Ra) //Back emf in volts
N=(Nr*2*%pi)/60 //Speed in Rad/sec
Ka=Eb/N //Constant
//Current at rated torque
 //At 1200 Rpm
 Eb1=(N1*Eb)/Nr 
 af=acosd((((I*Ra)+Eb1)*%pi)/(2*Vm*1.414))//Firing angle in Degree
 //At Eb=-198 V at speed 1500 RPM
 af1=acosd((((I*Ra)-Eb)*%pi)/(2*Vm*1.414))//Firing angle in Degree
 //But reversal of field of armature forward regeneration is obtained
 Ka1=-Ka
 W=-Eb/Ka1 //Angular speed in Rad/sec(Wrongly calculated in book,wrong value of Eb is taken)
 N1=(W*60)/(2*%pi) //Speed in Rpm
 
 //Results
printf('\n\n The Firing Angle=%0.1f Degree\n\n',af)
printf('\n\n The Firing Angle=%0.1f Degree\n\n',af1)
printf('\n\n The motor Speed  =%0.1f RPM \n\n',N1)
//The answer provided in the textbook is wrong(3rd answer omly)
