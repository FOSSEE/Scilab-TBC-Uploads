clc
//solution
//initialization of variables
m=1               // mass in kg
x=20/100         //quality of steam
P=200          //constant pressure in kPa
T1=100          //temperature intitial in degree centigrade
T2=400          //temperature final in degree centigrade

// first we find initial volume v1 and final volume v2

// using table C.2
vf=0.001061 // specific volume of saturated liquid in m^3 per kg 
vg=0.8857  //specific volume of saturated vapour in m^3 per kg 

v1=vf+x*(vg-vf);

v2=1.549   //specific volume of steam in m^3 per kg at T2=400*C and P2=0.2MPa
// now calculate work
W=m*P*(v2-v1);   //work done in constant pressure process
printf("Work done is %.1f kJ",W) // work is in kJ as pressure was in kPa
