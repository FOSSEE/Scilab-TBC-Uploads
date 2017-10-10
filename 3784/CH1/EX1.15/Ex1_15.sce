clc
// Variable Initialization 
Vm=230//Supply Voltage in Volts
Ra=0.2//Armature circuit resistance in Ohm
I=80 //Rated current in Amp
Nr=1200 //Motor speed in Rpm
V=220//Rated voltage of motor in Volts
a=150//firing angle in Degree
Nr1=-700 //Speed in Rpm

//Solution
N=(Nr*2*%pi)/60 //Speed in Rad/sec
Kaf=(V-I*Ra)/N //Motor Constant inN-m/A
//(A)For rated motor torque
Va=(2*Vm*1.414)*cosd(a)*(1/%pi)//Average voltage in Volts
N1=(Nr1*2*%pi)/60 //Speed in Rad/sec
af=acosd(((Kaf*N1)+(I*Ra))*%pi/(2*Vm*1.414))//Firing angle in Degree
Eb1=V-(I*Ra)//Back emf in Volts
Eb2=(Nr1/Nr)*Eb1 //Back emf in Volts
Va1=Eb2+(I*Ra)//Armature voltage in volts
af1=acosd((Va1*%pi)/(2*Vm*1.414))//Firing angle in Degree
//(B) Half rated Torque
Ia=(1/2)*I //Armature current in Amp
W=(Va-(Ia*Ra))/Kaf //Angular speed in Rad/sec
N=(W*60)/(2*%pi) //Speed in Rpm

 //Results
printf('\n\n The Firing Angle=%0.1f Degree\n\n',af1)
printf('\n\n The motor Speed=%0.1f RPM \n\n',N)
//The answers vary due to round off error(2nd only)
