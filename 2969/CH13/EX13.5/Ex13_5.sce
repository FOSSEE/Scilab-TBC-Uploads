clc
clear
//DATA GIVEN
r1=750/2000;                //radius of larger pulley in m
r2=300/2000;                //radius of smaller pulley in m
d=1.5;                      //distance between the centres of pulley in m
Tms=14;                     //maximum safe tension in N/mm
b=150;                      //width of the belt in mm
v=540;                      //speed of the belt in m/min
mu=0.25;                    //coefficient of friction

T1=Tms*b;                   //maximum tension in the belt in N
v=v/60;                     //speed of the belt converted into m/s
//(i) for open belt
ALPHAo=asin ((r1-r2)/d)*180/(%pi);     //alpha in degrees
THETAo=180-2*ALPHAo;                   //angle of lap or contact in deg
T2o=T1/(%e^(mu*(THETAo*%pi/180)));     //tension on the slack side in N
Po=(T1-T2o)*v;                         //power transmitted by the belt in watts

//(ii) for cross belt
ALPHAc=asin ((r1+r2)/d)*180/(%pi);     //alpha in degrees
THETAc=180+2*ALPHAc;                   //angle of lap or contact in deg
T2c=T1/(%e^(mu*(THETAc*%pi/180)));     //tension on the slack side in N
Pc=(T1-T2c)*v;                         //power transmitted by the belt in watts

printf(' (i) The Maximum Power transmitted by the open belt is: %2.3f kW. \n',(Po/1000));
printf(' (ii) The Maximum Power transmitted by the cross belt is: %2.3f kW. \n',(Pc/1000));
