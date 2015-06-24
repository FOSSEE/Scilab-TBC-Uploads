
clear;
clc;
printf("\t Example 5.6\n");

//part(i)
y=.048;                      //humidity kmol water vapour/kmol dry air
y_bar=y*(18/28.84);          //(from chart) absolute humidity
printf("\n we get absolute humidity as  :%f kg of water/kg dry air",y_bar);
printf("\n we get percentage humidity as(from chart)  :%f percent",25.5);
y_bar=y*(18/28.84);          //relative humidity
Ma=18;                      //molecular weight
Mb=28.84;                    //molecular weight
Tg=55;                       //temperature of mixture
pt=1.013*10^5;            //total pressure in pascal
VH=8315*[(1/Mb)+(y_bar/Ma)]*[(Tg+273)/pt];        //humid volume in m^3mixture/kg of dry air
printf("\n we get VH  as \t :%f m^3/kg dry air",VH);

//part(ii)
Ca=1005;
Cb=1884;
Cs=Ca+Cb*y_bar;            //humid heat  in j/kg dry air degree celcius
printf("\n we get humid heat as \t :%f j/kg dry air degree celcius ",Cs);

//part(iii)
d=2502300;                    //latent heat in j/kg
H=Cs*(Tg-0)+y_bar*d;        //enthalpy for refrence temperature of 0 degree
printf("\n we get H as \t :%f j/kg dry air",H);

//end