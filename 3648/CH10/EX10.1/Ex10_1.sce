 //Example 10_1
clc();
clear;
//To find out the pressure in Lungs
h=6   //units in cm Hg
Pa=76    //Units in cm Hg
Pl=(h+Pa)      //units in cm Hg

Pl=Pl*10^-2   //units in Meters Hg
g=9.8    //Units in Meters/cm^2
H=13600   //Constant   
Pl=Pl*H*g   //Units in Pa
printf("The pressure in the lungs is Pl=%.1f Pa",Pl)
