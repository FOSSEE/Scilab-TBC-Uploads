clc
//Variable Initialisation
V=440//Input Voltage of motor in volts
Rf=100//Field resistance in ohm
Il=50//Load Current in Ampere
N1=900//Rated Speed of Motor in rpm
N2=300//Rated Speed of Motor in rpm
N3=400//Rated Speed of Motor in rpm
N4=600//Rated Speed of Motor in rpm
Ra=0.3//Armature resistance in ohm
ton=4e-3//On period of Chopper in sec
//Solution
If=V/Rf//Motor Field Current in Amp
Ia=Il-If//Armature Current in Amp
Eb1=V-(Ia*Ra)//Back EMF of Motor
Eb2=(N2/N3)*Eb1
V2=Eb2+(Ia*Ra)//Required Terminal Voltage in volts
T1=(V/V2)*ton//Chopping Period
f1=1/T1///Chopping Period
Eb3=(N4/N1)*Eb1//Back Emf at 600 rpm
V3=Eb3+(Ia*Ra)//Required Terminal Voltage in volts
T2=(V/V3)*ton//Chopping Period
f2=1/T2//Chopping Period
printf('\n\n Frequency of chopper=%0.1f Hz\n\n',f2)
