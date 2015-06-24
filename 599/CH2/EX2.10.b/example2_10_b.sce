
clear;
clc;
printf("\t Example 2.10.b\n");
    //part (i)
r=(50/2)*10^-3;            //radius pf circular tube
pa1=(190);                //vapour pressure of ammonia at pt.1 
pa2=(95);                 //vapour pressure of ammonia at pt.2
Dab=2.1*10^-5            //molecular diffusivity in m^2/s
R=760*22.414/273;        //universal gas constant in mmHg*m^3*K*kmol    
    //carbondioxide and oxygen experiences equimolar counter diffusion 
T=298;                          //temperature in kelvin
pt=(10/780)*1.013*10^5;         //total pressure in pascal

    //part (ii)
//(ya-ya1)/(ya2-ya1)=(z-z1)/(z2-z1);
z2=1;                        //diffusion path in m at pos.2
z1=0;                        //diffusion path in m at pos.1
z=.75;                      //diffusion at general z
pa=poly([0],'pa');         //calc. of conc. in gas phase
x=roots((pa-pa1)/(pa2-pa1)-(z-z1)/(z2-z1));
printf("\n partial pressure of co2 at o.75m from the end where partial pressure is 190mmhg is:%f mmHg",x);
//end