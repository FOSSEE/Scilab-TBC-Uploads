//EXAMPLE 27.3(a)
//4-POLE MOTOR

clc;
funcprot(0);

//Variable Initialisation
P=4;...........//Total number of poles
Z=880;.........//Total number of conductors
Ia=120;.......//Armature current in Amperes
b=3;..........//Brush lead in degrees
Aw=2;.......//Number of parallel paths for a wave wound generator
fdw=1100;......//Demagnetizing the field winding has 1100 turns per pole

I=Ia/Aw;......//Current per path in Amperes
ATd=Z*I*b/360;.......//Demagnetizing ampere-turns per pole
ATe=Z*I*((1/(2*P))-(b/360));.....//Cross-magnetizinfampere-turns per pole
disp(ATd,"(a).Demagnetizing ampere-turns per pole:");
disp(ATe,"(b).Cross-magnetizinfampere-turns per pole:");
Afc=ATd/fdw;........//Additional field current in Amperes
disp(Afc,"(c).Additional field current in Amperes:");
