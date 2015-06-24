clc
clear
//DATA GIVEN
m=1.5;                         //mass of steam in cooker in kg
p1=5;                          //pressure of steam in bar
x1=1;                          //initial dryness fraction of steam
x2=0.6;                        //final dryness fraction of steam

//At 5 bar, from steam tables
Ts1=151.8+273;                  //in K
hf1=640.1;                      //kJ/kg
hfg1=2107.4;                    //kJ/kg
vg1=0.375;                      //m^3/kg

V1=m*vg1;                                     //volume of pressure cooker in m^3
u1=(hf1+hfg1)-(p1*10^5)*(vg1*10^-3);          //internal energy of steam per kg at initial point 1
//V1=V2
//V1=m*[(1-x2)*vf2+x2*vg2]                    //vf2 is negligible
vg2=V1/x2/1.5;

//from steam tables coreesponding to vg2=0.625 m^3/kg
p2=2.9;
Ts2=132.4+273;                  //in K
hf2=556.5;                      //kJ/kg
hfg2=2166.6;                    //kJ/kg

u2=(hf2+x2*hfg2)-(p2*10^5)*x2*(vg2*10^-3);    //internal energy of steam per kg at final point 2

hnet=u2-u1;                                   //heat transferred at constant volume per kg
Htotal=m*hnet;                                //total heat transferred
//-ve sign indicates that heat has been rejected
Hrej=-1*Htotal;

printf(' (i) The Pressure at new state is: %1.1f bar. \n',p2);
printf('      The Temperature at new state is: %3.1f deg. celsius or %3.1f K. \n',(Ts2-273),Ts2);
printf(' (ii) The Total heat to be REJECTED is: %4.2f kJ.',Hrej);
