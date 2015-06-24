// To determine the inductance of double circuit line 
clear
clc;
GMDs=.0069;//self GMD of the conductor
Dab=sqrt((3^2)+.5^2);
Dbc=Dab;
Dac=6;
Dab`=sqrt((3^2)+6^2);
Daa=sqrt((6^2)+5.5^2);
Dm1=((3.04*6*5.5*6.708)^.25);
Dm2=((3.04*3.04*6.708*6.708)^.25);
Dm=4.89;
Ds1=sqrt(GMDs*Daa);
Ds2=0.2217;
Ds=.228;
Z=2*(10^-7)*(10^6)*log(Dm/Ds);
mprintf("inductance =%.3f mH/km",Z);
