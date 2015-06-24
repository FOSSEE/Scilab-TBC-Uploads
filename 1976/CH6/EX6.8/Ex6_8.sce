
//To estimate the number rating and disposition of the lamps
//Page 338
clc;
clear;

E=32;                   //Illumination required for the working plane
A=80*15;                //Area of the work bench
UF=0.5;                 //Utilization Factor
MF=0.8;                 //Maintenance Factor
SHR=1.5;                //Maximum permissible value of spacing to height ratio
h=4.5;                  //Required height for the lamps to be hung above the work bench
Leff=14;                //Lamp efficacy
Tlumen=E*A;             //Total lumens required
Llumen=Tlumen/(UF*MF);  //Lamp lumens required
l=(A/15);               //Length of the workspace

Nc=ceil(l/(1.5*4.5));    //Minimum number of lamps in a single row (Number of columns)

W=200;                  //Assumed wattage of the bulb

NoL=Llumen/(W*Leff);    //Number of bulbs required, Calculated value

Nr=ceil(NoL/12);        //Number of rows calculated for the required criteria

N=Nc*Nr;                //Number of lamps necessary.

Sp=l/Nc;                //Length wise spacing between the lamps
printf('Assuming 200W bulbs, in a rectangular workspace of 80m*15m, we require %g bulbs arranged in %g rows and %g columns having a spacing of %gm between them.\n',N,Nr,Nc,Sp)





