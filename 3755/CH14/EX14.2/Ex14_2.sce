clear
//
//
//

//Variable declaration    
V=1500;      //volume(m^3)
A1=112;      //area of plastered walls(m^2)
A2=130;      //area of wooden floor(m^2)
A3=170;      //area of plastered ceiling(m^2)
A4=20;       //area of wooden door(m^2)
n=100;     //number of cushioned chairs
A5=120;    //area of audience(m^2)
C1=0.03;    //coefficient of absorption in plastered walls
C2=0.06;    //coefficient of absorption in wooden floor
C3=0.04;    //coefficient of absorption in plastered ceiling
C4=0.06;    //coefficient of absorption in wooden door
C5=1.0;     //coefficient of absorption in cushioned chairs
C6=4.7;     //coefficient of absorption in audience

//Calculations
a1=A1*C1;    //absorption due to plastered walls
a2=A2*C2;    //absorption due to wooden floor
a3=A3*C3;    //absorption due to plastered ceiling
a4=A4*C4;    //absorption due to wooden door
a5=n*C5;     //absorption due to cushioned chairs
a6=A5*C6;    //absorption due to audience 
aS=a1+a2+a3+a4+a5;       //total absorption in hall
T1=0.165*V/aS;       //reverberation time when hall is empty(sec)
T2=0.165*V/(aS+a6);    //reverberation time with full capacity of audience(sec)
T3=0.165*V/((n*C6)+aS);    //reverberation time with audience in cushioned chairs(sec)

//Result
printf("\n reverberation time when hall is empty is %0.2f sec",T1)
printf("\n reverberation time with full capacity of audience is %0.3f sec",T2)
printf("\n reverberation time with audience in cushioned chairs is %0.2f sec",T3)
