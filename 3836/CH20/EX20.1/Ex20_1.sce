clear
//

//Introduction
gm=2*10**-3
rd=2*10**3                         //resistance in ohm
C=10**-6                           //capacitance in farad
R=10**6                            //resistance in ohm


//Calculation
G=-gm*rd                             //Small signal voltage gain
fc=1/(2*%pi*C*R)                 //frequency in Hz

//Result
printf("\n Small signal voltage gain = %d ",G)

printf("\n Low frequency cut off = %.2f Hz",fc)

