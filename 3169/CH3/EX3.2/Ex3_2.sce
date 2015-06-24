//developed in windows XP operating system
//platform Scilab 5.4.1
clc;clear;
//example 3.2
//To check the working of the diode

//given data 
P=5//power rating (in W)
Vd=1.2//diode voltage(in V)
Id=1.75//diode current(in A)

//calculation
//from the equation of power dissipation .....Pd=Vd*Id
Pd=Vd*Id

if(Pd<P)
    printf('the diode will not be destroyed')
else
    printf('the diode will be destroyed')
end
