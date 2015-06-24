

clear;
clc;

printf("\t Example 10.1\n");

T1=2273;        //temp. of liquid air,K
T2=303;         //temp. of room,K
T3=973;        //temp. of shield,K
D1=0.003;        //diameter of crucible,m
D2=0.05;        //diameter of shield,m
theta1=330;     //surrounding angle of jet,degree
theta2=30        // angle of slit,degree
Fjr=theta2/360;       //fraction of energy of view of jet occupied by room
Fjs=theta1/360 ;       //fraction of energy of view of jet occupied by shield

Qnjr=%pi*D1*Fjr*5.67*10^-8*(T1^4-T2^4);    //net heat transfer from jet to room,W/m

Qnjs=%pi*D1*Fjs*5.67*10^-8*(T1^4-T3^4);    //net heat transfer from jet to shield,W/m

//to find the radiation from the inside of the shield to the room, we need Fshield-room.since any radiation passing out of the slit goes to the room,we can find this view factor equating view factors to the room with view factors to the slit.

Fsj=%pi*D1/0.01309*Fjr;    //fraction of energy of view of slit occupied by jet
Fss=1-Fsj;        //fraction of energy of view of slit  occupied by shield.
Fsr=0.01309*Fss/(%pi*D2*Fjs);    //fraction of energy of view of shield occupied by room

Qnsr=%pi*D2*Fjs*5.67*10^-8*Fsr*(T3^4-T2^4);    //net heat transfer from shield to room, W/m

printf("\t  heat transfer from jet to room through the slit is :%.0f W/m\n",Qnjr);

printf("\t  heat transfer from the jet to shield is :%.0f W/m\n",Qnjs);

printf("\t  heat transfer from inside of shield to the room is :%.0f W/m\n",Qnsr);

printf("\t both the jet and the inside of the shield have relatively small view factors to the room, so that comparatively little heat is lost through the silt.");
//end