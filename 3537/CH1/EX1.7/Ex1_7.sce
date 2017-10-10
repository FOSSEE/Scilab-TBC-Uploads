//Example 1_7
clc; 
clear;
//Calculate the fringe width
d=0.2                  //units in mm
d=0.2*10^-3            //units in mts
lamda=550              //units in nm
lamda=550*10^-9        //units in mts
D=1                    //units in mts
betaa=(lamda*D)/d      //units in mts
betaa=betaa*10^3       //units in mm
printf("Fringe width on a screen at a distance of 1m from the slits is %.2fmm",betaa)