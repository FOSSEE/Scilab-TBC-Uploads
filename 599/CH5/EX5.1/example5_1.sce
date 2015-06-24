
clear;
clc;
printf("\t Example 5.1\n");
            //dry bulb temperature=50  and  wet bulb temperature=35 
Tg=50;                    //dry bulb temperature=50
To=0;                    //refrence temperature in degree celcius    
Mb=28.84;                //average molecular weight of air
Ma=18;                   //average molecular weight of water

//part(i)
ybar=.0483                //0.003 kg of water vapour/kg of dry air
printf("\n the humidity(from chart) is  \t\t:%f  percent",ybar);

//part(ii)
humper=35;                //humidity percentage
printf("\n the percentage humidity is(from chart) :%f  percent",humper);

//part(iii)
pt=1.013*10^5;            //total pressure in pascal
molhum=0.0483;            //molal humidity =pa/(pt-pa)
pa=molhum*pt/(1+molhum);
//the vopour pressure of water(steam tables)at 50degree = .1234*10^5 N/m^2
relhum=(pa/(.1234*10^5))*100;      //percentage relative humidity =partial pressure/vapour pressure
printf("\n the percentage relative humidity is \t percent:%f  ",relhum);

//part(iv)
dewpoint=31.5;            //dew point temperature in degree celcius
printf("\n the dew point temperature \t\t :%f degree celcius",dewpoint);

//part(v)
Ca=1.005;
Cb=1.884;
ybar=.03;                //saturation temperature inkg water vapour/kg dry air
Cs=Ca+Cb*ybar;            //humid heat  in kj/kg dry air degree celcius
printf("\n we get humid heat as \t\t\t :%f kj/kg dry air degree celcius ",Cs);

//part(vi)
d=2502;                    //latent heat in kj/kg
H=Cs*(Tg-0)+ybar*d;        //enthalpy for refrence temperature of 0 degree
printf("\n we get H as \t\t\t\t :%f kj/kg",H);
Hsat=274;                   //enthalpy of sturated air
Hdry=50;                   //enthalpy of dry air in kj/kg
Hwet=Hdry+(Hsat-Hdry)*0.35;     //enthalpy of wet air in kj/kg
printf("\n we get enthalpy of wet air  as \t:%f kj/kg",Hwet);

//part(vii)
VH=8315*[(1/Mb)+(ybar/Ma)]*[(Tg+273)/pt];        //humid volume in m^3mixture/kg of dry air
printf("\n we get VH  as (a)\t\t\t :%f m^3/kg of dry air",VH);
spvol=1.055;              //specific volume of saturated air in m^3*kg
vdry=0.91;                //specific volume of dry air in m^3/kg
Vh=vdry+(spvol-vdry)*.35  //by interpolation we get Vh in m^3/kg of dry air 
printf("\n by interpolation we get specific volume Vh as(b) :%f m^3/kg of dry air",Vh);

//end