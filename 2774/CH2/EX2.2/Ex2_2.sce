clc
//solution
//    initialization of variables
m=4// mass of water in kg
V=1 // volume in m^3
T=150 // temperature of water in degree centigrade

// TABLE C.1 is used for values in wet region
// Part (a)
P=475.8// pressure in KPa in wet region at temperature of 150 *C
printf("The pressure is %.1f kPa \n",P)

// Part (b)
// first we determine the dryness fraction
v=V/m// specific volume of water
vg=0.3928 //  specific volume of saturated vapour @150 degree celsius
vf=0.00109 // specific volume of saturated liquid @150 degree celsius
x=(v-vf)/(vg-vf); //dryness fraction
mg=m*x; // mass of vapour
printf(" The mass of vapour present is %.3f kg \n",mg)

// Part(c) 
Vg=mg*vg;// volume of vapour
printf(" The volume of vapour is %.3f m^3",Vg)
