

//example 3.4
//calculate
//Depth of water required to irrigate the soil
clc;
//Given
Sg=1.6;    //Apparent specific gravity
Fc=0.2;        //Field capacity
M1=150;        //mass of sample soil
M2=136;        //mass of sample after drying
d=0.9;         //depth of soil to be irrigated
Mc=(M1-M2)/M2;
D=Sg*d*1000*(Fc-Mc);
D=round(D);
mprintf("Depth of water required to irrigate the soil=%f mm.",D);
