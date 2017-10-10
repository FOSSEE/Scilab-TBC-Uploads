//EXAMPLE 27.10
//DC MACHINE

clc;
funcprot(0);

//Variable Initialisation
P=4;.......//Total number of poles
N=1500;.......//Speed in rpm
Cd=30;.........//Commutator distance in Centi Meter
Ia=150;......//Armature current in Amperes
Wb=1.25;.......//Thickness of brush in Centi Meter
L=0.07;.......//Self inductance of each armature coil in Mili Henry
Aw=2;........//Number of parallel paths in a wave wound generator

I=Ia/Aw;............//Current per conductor in Amperes
v=3.14*Cd*(N/60);........//Peripheral velocity in cm/s
Tc=Wb/v;.............//Time for each commutation in Seconds
E=L*2*I*10^-3/Tc;...........//EMF induced in each coil dring commutation in Volts
r=round(E*10)/10;........//Rounding of decimal places
disp(r,"EMF induced in each coil dring commutation in Volts:");
