// Calculation of relative humidity ,humid volume enthalpy and heat required if 100m^3 of this air is heated to 110 degree
clear;
clc;
printf("\t Example 5.9\n");

//part(i)
y_bar=.03;                   // humidity inkg water /kg dry air
pt=760;                     //total pressure in pascal
pa2=118;                    //final pressure
y=y_bar/(18/28.84);        //humidity kmol water vapour/kmol dry air
pa=(y*pt)/(y+1);           //partial pressure
rh=pa/pa2;                  //relative humidity
sh=pa2/(pt-pa2);            //saturated humidity
ph=(y/sh)*100;                //percentage humidity
printf("\n percentage humidity is :%f",ph);

///part(ii)
Ma=18;                      //molecular weight
Mb=28.84;                    //molecular weight
Tg=55;                       //temperature of mixture
pt=1.013*10^5;            //total pressure in pascal
VH=8315*[(1/Mb)+(y_bar/Ma)]*[(Tg+273)/pt];        //humid volume in m^3mixture/kg of dry air
printf("\n we get VH humid volume as  :%f m^3/kg dry air",VH);


//part(iii)
Ca=1005;
Cb=1884;
Cs=Ca+Cb*y_bar;                //humid heat  in j/kg dry air degree celcius
printf("\n we get humid heat as \t :%f j/kg dry air degree celcius ",Cs);
d=2502300;                    //latent heat in j/kg
H=Cs*(Tg-0)+y_bar*d;         //enthalpy for refrence temperature of 0 degree
printf("\n we get H enthalpy as \t :%f j/kg",H);

//part(iv)
v=100;                        //volume of air
mass=v/VH;                    //mass of dry air
Tg=110;                       //temperature of mixture
d=2502300;                    //latent heat in j
H_final=Cs*(Tg-0)+y_bar*d;    //enthalpy for refrence temperature of 0 degree
H_added=(H_final-H)*102.25;     //HEAT added  in kj     
printf("\n we get heat added as \t :%f kj",H_added/1000);
//end