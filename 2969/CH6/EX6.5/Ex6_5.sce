clc
clear
//DATA GIVEN
M=18000;                //mass of steam generated in kg/hr
p=12.5;                 //steam pressure in bar
x=0.97;                 //quality of steam
Tfw=105;                //feed  water temp. in deg celsius
Mf=2040;                //rate of coal firing in kg/hr
C=27400;                //highrer calorific value (HCV) of coal in kJ/kg

//from steam table, corresponding to 12.5 bar,
hf=806.7;               //in kJ/kg
hfg=1977.4;             //in kJ/kg
h=hf+x*hfg;             //in kJ/kg
hf1=4.18*(Tfw-0);       //heat of feed water in kJ/kg

//heat rate of the boiler = heat supplied per hour
heatrate=M*(h-hf1)      //heat rate of boiler
Ma=M/Mf;                //in kg per kg of fuel
Me=Ma*(h-hf1)/2257;     //(kg of steam)/(kg of fuel)
eta=Ma*(h-hf1)/C;       //thermal efficiency

printf(' (i) The Heat rate of boiler is: %1.4e kJ/h. \n',heatrate);
printf(' (ii) The Equivalent evaporation, Me is: %5.3f (kg of steam)/(kg of fuel). \n',Me);
printf('(iii) The Thermal efficiency is: %5.4f ',eta);
printf('or %5.2f percent. \n',eta*100);    
