clear;
clc;
printf("\t Example 5.5\n");

//part(i)
pa = 13.3
pa2 = 20.6   
y_bar=.0183;                //kg water vapour/kg dry air
printf("\n we get humidity as(from chart)  :%f kg of water/kg dry air",y_bar);
printf("\n we get saturation humidity as(from chart)  :%d percent",67);
Ma=18;                      //molecular weight
Mb=28.84;                    //molecular weight
Tg=30;                       //temperature of mixture
rh=(pa/pa2)*100;            //relative humidity in pecentage        
pt=1.013*10^5;            //total pressure in pascal
VH=8315*[(1/Mb)+(y_bar/Ma)]*[(Tg+273)/pt];        //humid volume in m^3mixture/kg of dry air
printf("\n we get humid volume as \t:%f  m^3/kg dry air",VH);

//part(ii)
Ca=1005;
Cb=1884;
Cs=Ca+Cb*y_bar;            //humid heat  in j/kg dry air degree celcius
printf("\n we get humid heat as \t\t :%f j/kg dry air degree celcius ",Cs);

//part(iii)
d=2502300;                    //latent heat in j/kg
H=Cs*(Tg-0)+y_bar*d;        //enthalpy for refrence temperature of 0 degree
printf("\n we get Enthalpy H as \t\t:%f j/kg dry air",H);

//part(iv)
dewpoint=23.5;            //dew point temperature in degree celcius
printf("\n the dew point temperature \t :%f degree celcius",dewpoint);

//end