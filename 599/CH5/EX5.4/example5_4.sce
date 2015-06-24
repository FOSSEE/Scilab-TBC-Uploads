
clear;
clc;
printf("\t Example 5.4\n");

//part(i)
pa=13.3;                      //pressure in kpa
pa2=20.6;                    //vapour pressure at 60 degree
pt=106.6                     //total pressure in kpa
y=pa/(pt-pa);              //absolute molal humidity
y_bar=y*(18/28.84);          //relative humidity
printf("\n absolute  humidity of mixture :%f kg water-vapour/kg dry air",y_bar);


//part(ii)
mf=pa/pt;                    //mole fraction
printf("\n the mole fraction is :%f",mf);

//part(iii)
vf=mf;                            //volume fraction
printf("\n the volume fraction is :%f",vf);

//part(iv)
Ma=18;                      //molecular weight
Mb=28.84;                    //molecular weight
Tg=60;                       //temperature of mixture
rh=(pa/pa2)*100;            //relative humidity in pecentage        
printf("\n we get relative humidity as  as :%f percent",rh);

//part(v)
VH=8315*[(1/Mb)+(y_bar/Ma)]*[(Tg+273)/pt]*10^-3;        //humid volume in m^3mixture/kg of dry air
x=y_bar/VH;                 //g water/m^3 mixture 
printf("\n we get x i.e. gwater/m^3 mixture as :%f ",x*1000);
//end