
clear;
clc;
printf("\t Example 5.8\n");
pa1=4.24            //data:    vapour pressure of water at 30degree = 4.24 kpa
pa2=1.70            //        vapour pressure of water at 30degree = 1.70 kpa

//part(i)
pt=100;                         //total pressure
ys_bar=pa1/(pt-pa1);              //kg water vapour/kg dry air
rh=.8;                          //relative humidity
pa3=rh*pa1;                       //partial pressure
y_bar=pa3*(18/28.84)/(pt-pa3);               //molal humidity
printf("\n the molal humidity:%f kg/kg dry air",y_bar);

//part(ii)
//under these conditions the air will be saturated at 15 degree as some water is condensed
pa=1.7;    
pt=200;
ys=pa/(pt-pa);
ys_bar=ys*(18/28.84);
printf("\n the molal humidity if pressure doubled and temp. is 15 :%f kg/kg dry air",ys_bar);

//part(iii) 
Ma=18;                        //molecular weight
Mb=28.84;                    //molecular weight
Tg=30;                       //temperature of mixture
rh=(pa/pa2)*100;            //relative humidity in pecentage        
pt=10^5;              //total pressure in pascal
VH=8315*[(1/Mb)+(y_bar/Ma)]*[(Tg+273)/pt];        //humid volume in m^3mixture/kg of dry air
printf("\n we get humid volume VH  as \t :%f m^3/kg of dry air",VH);
w=100/VH;                   //100 m^3 of original air 
wo= w*y_bar;                //water present in original air
wf= w*ys_bar;              //water present finally
wc=wo-wf;                   //water condensed from 100m^3 of original sample
printf("\n the weight water condensed from 100m^3 of original sample:%f kg",wc);

//part(iv)
Tg=15;                       //temperature of mixture       
pt=2*10^5;            //total pressure in pascal
VH=8315*[(1/Mb)+(ys_bar/Ma)]*[(Tg+273)/pt];        //humid volume in m^3mixture/kg of dry air
vf=VH*110.6;                //final volume of mixture
printf("\n we get VH final volume of mixture as \t :%f m^3",vf);

//end