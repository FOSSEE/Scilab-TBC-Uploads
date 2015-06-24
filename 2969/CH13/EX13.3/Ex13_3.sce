clc
clear
//DATA GIVEN
T1=1500;                    //tension on the tight side in N
T2=1200;                    //tension on the slack side in N
v=80;                       //speed of the belt in m/s

P=(T1-T2)*v;                //power transmitted by the belt in watts

printf(' The Power transmitted by the belt is: %2.0f kW. \n',(P/1000));
