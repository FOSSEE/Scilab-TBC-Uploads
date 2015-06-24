clc
clear
//DATA GIVEN
v=500;                      //speed of the belt in m/min
mu=0.3;                     //coefficient of friction
theta=160;                  //angle of contact in degrees
T1=700;                     //maximum tension in the belt in N

//(T1/T2)=e^(mu*theta)
theta=theta*(%pi)/180;      //theta converted into radians
T2=T1/(%e^(mu*theta));      //tension on the slack side in N
v=v/60;                     //speed of the belt converted into m/s
P=(T1-T2)*v;                //power transmitted by the belt in watts

printf(' The Power transmitted by the belt is: %2.3f kW. \n',(P/1000));
