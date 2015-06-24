clc
clear
//DATA GIVEN
To=1000;                    //initial tension in the belt in N
theta=150;                  //angle of embrace in degrees
mu=0.25;                    //coefficient of friction
v=500;                      //speed of the belt in m/min

//Initial tension, To=(T1+T2)/2
//so, (T1+T2)=2000.............................. (1)
theta=theta*(%pi)/180;      //theta converted into radians
c=%e^(mu*theta);            //so, T2/T1=c........(2)
//By equation (1) and (2),
T2=(To*2)/(c+1);            //tension in the slack side in N
T1=c*T2;                    //tension in the tight side in N

v=v/60;                     //speed of the belt converted into m/s
P=(T1-T2)*v;                //power transmitted by the belt in watts

printf(' (i) The Tension in the tight side T1 is: %4.0f N. \n',T1);
printf('      The Tension in the slack side T2 is: %3.1f N. \n',T2);
printf(' (ii) The Power transmitted by the belt is: %2.2f kW. \n',(P/1000));

