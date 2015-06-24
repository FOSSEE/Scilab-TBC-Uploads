
clear;
clc;
printf("\t Example 5.2\n");
            //dry bulb temperature=25  and  wet bulb temperature=22
Tg=25;                    //dry bulb temperature=50
To=0;                    //refrence temperature in degree celcius    
Mb=28.84;                //average molecular weight of air
Ma=18;                   //average molecular weight of water

//part(i)
hum=.0145                //0.0145 kg of water/kg of dry air
printf("\n the saturation humidity(from chart) is :%f  percent",hum);

//part(ii)
humper=57;                //humidity percentage
printf("\n the percentage humidity is  \t\t:%f  percent",humper);

//part(iii)
pt=1;            //total pressure in atm
sathum=0.0255;            //molal humidity =pa/(pt-pa)
pa1=sathum*pt*(28.84/18)/(1+(sathum*(28.84/18)));
//the vopour pressure of water(steam tables)at 25 = .0393*10^5 N/m^2
pt=1;                     //total pressure in atm
molhum=0.0145;            //molal humidity =pa/(pt-pa)
pa2=molhum*pt*(28.84/18)/(1+(molhum*pt*(28.84/18)));
//the vopour pressure of water(steam tables)at 25 = .0393*10^5 N/m^2
relhum=(pa2/pa1)*100;      //percentage relative humidity =partial pressure/vapour pressure
printf("\n the percentage relative humidity is \t :%f  ",relhum);

//part(iv)
dewpoint=19.5;            //dew point temperature in degree celcius
printf("\n the dew point temperature \t :%f degree celcius",dewpoint);

//part(v)
Ca=1005;
Cb=1884;
ybar=.0145;                // humidity inkg water /kg dry air
Cs=Ca+Cb*ybar;            //humid heat  in j/kg dry air degree celcius
d=2502300;                    //latent heat in j/kg
H=Cs*(Tg-0)+ybar*d;        //enthalpy for refrence temperature of 0 degree
printf("\n we get Humid heat H as \t :%f j/kg",H);
//the actual answer is 62091.3 bt in book it is given 65188.25(calculation mistake in book)
//end