clc
//Variable Initialisation
Ea=230//Input Voltage of motor in volts
d1=0.4//Duty Ratio
Ia1=86//Armature Current in Ampere
Ra=0.25//Armature resistance in ohm
N1=850//Rated Speed of Motor in rpm
N4=1300//Rated Speed of Motor in rpm
Eb1=220//Average Value of Back EMF
//Solution
E01=d1*Ea
Eb2=E01+(Ia1*Ra)
N2=(Eb2/Eb1)*N1
dmax=0.98//Maximum aloowable duty ratio
E02=dmax*Ea
Eb3=E02+(Ia1*Ra)
N3=(Eb3/Eb1)*N1//Wrong value of N1 is taken in textbook
Eb4=(N4/N1)*Eb1
R=((Eb4-E02)/Ia1)-Ra
E1=(N1/N4)*Eb3
n=E1/Eb1
printf('\n\n Motor speed=%0.1f rpm\n\n',N2)
printf('\n\n Maximum allowable motor Speed=%0.1f rpm\n\n',N3)//The answer provided in the textbook is wrong
printf('\n\n Resistance to be inserted=%0.1f ohm\n\n',R)
printf('\n\n number of turns reduced to fraction=%0.1f\n\n',n)
