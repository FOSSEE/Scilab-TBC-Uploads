clc
clear

//INPUT
p1=4.60;//presure at 0deg.C in mm per deg.C
p2=4.94;//pressure at 1deg.C in mm per deg.C
t=0.0072;//lowering the melting point in deg.C
t1=7.1563979*10^(-3);//rise in melting point in deg.C
p=760;//atmospheric pressure in mm hg

//CALCULATIONS
dp=p2-p1;//rate of increase of pressure in mm per deg.C
p3=(t1*p)/t;//pressure in mm
dt=(755.4-p3)/dp;//tmperature for the triple point in deg.C

//OUTPUT
mprintf('temperature for the triple point is %3.6f deg.C',dt)
