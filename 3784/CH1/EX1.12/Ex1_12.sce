clc
// Variable Initialization 
Vm=230//Supply Voltage in Volts
Ra=0.3//Armature circuit resistance in Ohm
I=18 //Rated current in Amp
Nr=1500 //Motor speed in Rpm
a=45//firing angle in Degree
Vs=220 //input in volts

//Solution
Va=(2*Vm*1.414)*cosd(a)*(1/%pi)//Average voltage in Volts
Eb=Va-(I*Ra)//Back emf in volts
//When the polarity of the back emf is reversed ,the machine would act as generator and hence the governing equation
Va=-Eb+(I*Ra) //Armature voltage in volts
af=acosd((Va*%pi)/(2*Vs*sqrt(2)))//Firing angle in Degree(This value is Wrongly calculated in Textbook)
Pg=Eb*I //Power generated in Watt
Pl=((I)^2)*Ra //Power loss in armature in Watt
P=Pg-Pl //Power fed to the supply in Watt

//Results
printf('\n\n The Firing Angle=%0.1f Degree\n\n',af)
printf('\n\n The Power fed back to Supply=%0.1f Watt\n\n',P)
//The answer provided in the textbook is wrong(1st answer)
