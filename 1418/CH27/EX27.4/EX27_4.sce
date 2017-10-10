//EXAMPLE 27.4
//4-POLE GENERATOR

clc;
funcprot(0);

//Variable Initialisation
P=4;...........//Total number of poles
Z=492;..........//Total number of conductors
Ia=143+10;...........//Armature current in Amperes(Current supplied + Shunt field current)
b=10;...........//Actual brush lead in degrees
Al=P;............//Number of parallel paths in a lap wound generator
Aw=2;...........//Number of parallel paths in a wave wound generator

I1=Ia/Al;.....//Current per path for lap wound in Amperes 
I2 =Ia/Aw;.....//Current per path for wave wound in Amperes
ATd1=Z*I1*b/360;.......//Demagnetizing ampere-turns per pole for lap wound
y=round(ATd1);.....//Rounding of decimal places
sft1=y/b;........//Extra shunt field turns for lap wound
r=round(sft1);......//Rounding of decimal places
ATd2=Z*I2*b/360;.....//Cross-magnetizinfampere-turns per pole for wave wound
y1=round(ATd2);......//Rounding of decimal places
sft2=y1/b;..........//Extra shunt field turns for wave wound
r1=round(sft2);.......//Rounding of decimal places

disp(y,"Demagnetizing ampere-turns per pole for lap wound:");
disp(r,"Extra shunt field turns for lap wound:");

disp(y1,"Demagnetizing ampere-turns per pole for wave wound:");
disp(r1,"Extra shunt field turns for wave wound:");
