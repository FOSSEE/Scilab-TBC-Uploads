clc
clear
//DATA GIVEN
p=12;                    //mean steam pressure in bar
Ms=40000;                //mass of steam generated in kg
x=0.85;                  //mean dryness fraction
Tfw=30;                  //mean feed  water temp. in deg celsius
Mc=4000;                 //mass of coal used in kg
C=33400;                 //calorific value of coal in kJ/kg

//from steam table, corresponding to 12 bar,
hf=798.4;                //in kJ/kg
hfg=1984.3;              //in kJ/kh
h=hf+x*hfg;              //in kj/kg
hf1=4.18*(Tfw-0);        //heat of feed water in kJ/kg

Fe=(h-hf1)/2257;         //factor of equivalent evaporation,Fe
Ma=Ms/Mc;                //per kg of fuel
Me=Ma*(h-hf1)/2257;      //(kg of steam)/(kg of fuel)
eta=Ma*(h-hf1)/C;        //efficiency of boiler

printf('  (i) The Factor of equivalent temerature,Fe is: %5.3f\n',Fe);
printf('  (ii) The Equivalent evaporation from and at 100 deg celsius , Me is: %5.2f (kg of steam)/(kg of coal).\n',Me);
printf(' (iii) The Efficiency of boiler is: %5.4f ',eta);
printf('or %5.2f percent. \n',eta*100);    
