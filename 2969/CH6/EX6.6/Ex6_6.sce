clc
clear
//DATA GIVEN
Mw=5940;            //mass of water evaporated kg/hr
Mc=675;             //mass of coal burnt in kg/hr
C=31600;            //lower calorific value(LCV) of coal in kJ/kg
p1=14;              //pressure of steam at boiler stop valve in bar
Te1=32;             //temp. of feed water entering economiser in deg celsius
Te2=115;            //temp. of feed water leaving economiser in deg celsius
x=0.96;             //dryness fraction of steam entering superheater
Tsup=260;           //temp. of steam leaving superheater in deg celsius
Cp=2.3              //specific heat of superheated steam

hf1=4.18*(Te2-Te1);                     //heat utilised by 1 kg of feed water in economiser  
//from steam table, corresponding to 14 bar,
Ts=195; 
hf=830.1; 
hfg=1957.7;
hboiler=(hf+x*hfg)-hf1;                 //heat utilised by 1 kg of feed water in boiler 
hsuperheater=(1-x)*hfg+Cp*(Tsup-Ts);    //heat utilised by 1 kg of feed water in superheater
Ma=Mw/Mc;                               //in kg per kg of fuel
Pe=hf1/C*Ma*100;                        //% of heat utilised in economiser
Pb=hboiler/C*Ma*100;                    //% of heat utilised in boiler
Ps=hsuperheater/C*Ma*100;               //% of heat utilised in superheater
htotal=hf1+hboiler+hsuperheater;        //total heat absorbed in kg of water
eta=Ma*htotal/C;                        //overall efficiency of boiler plant

printf(' (i) The Percentage of heat utilised in Economiser is: %5.2f percent.\n',Pe);
printf('      The Percentage of heat utilised in Boiler is: %5.2f percent.\n',Pb);
printf('      The Percentage of heat utilised in Superheater is: %5.2f percent.\n',Ps);
printf(' (ii) The Overall Efficiency of boiler plant is: %5.4f ',eta);
printf('or %5.2f percent. \n',eta*100);    
