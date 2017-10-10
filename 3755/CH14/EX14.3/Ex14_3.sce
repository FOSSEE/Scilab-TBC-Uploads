clear
//
//
//

//Variable declaration    
V=1200;      //volume(m^3)
a1=220;      //area of wall(m^2)
a2=120;      //area of floor(m^2)
a3=120;      //area of ceiling(m^2)
C1=0.03;    //coefficient of absorption in wall
C2=0.80;    //coefficient of absorption in floor
C3=0.06;    //coefficient of absorption in ceiling

//Calculations
A1=a1*C1;    //absorption due to plastered walls
A2=a2*C2;    //absorption due to wooden floor
A3=a3*C3;    //absorption due to plastered ceiling
aS=a1+a2+a3;       //total absorption in hall
abar=(A1+A2+A3)/aS;    //average sound absorption coefficient
AS=abar*aS;       //total absorption of room(metric sabines)
T=0.165*V/AS;       //reverberation time(sec)

//Result
printf("\n average sound absorption coefficient is %0.2f ",abar)
printf("\n reverberation time is %0.1f sec",T)
