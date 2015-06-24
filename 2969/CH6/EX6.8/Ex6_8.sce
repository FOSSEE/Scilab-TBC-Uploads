clc
clear
//DATA GIVEN
Ms=2000;            //rate of steam production in kg/hr
x=1;                //quality of steam
p=10;               //steam pressure in bar
Tfw=110;            //feed  water temp. in deg celsius
Mf=225;             //rate of coal firing in kg/hr
C=30100;            //calorific value of coal in kJ/kg
Puc=10;             //% of unburnt coal

//from steam table, corresponding to 10 bar,
h=2776.2;                   //in kJ/kg
hf1=4.18*(Tfw-0);           //heat contained in 1kg of feed water before entering boiler in kJ/kg
htotal=h-hf1                //total heat given to produce 1 kg of steam in boiler in kJ/kg
Mc=Mf*(100-Puc)/100;        //mass of coal actually burnt in kg
Ma=Ms/Mc;                   //(kg of steam)/(kg of fuel)
ETAb=Ma*(h-hf1)/C;          //thermal efficiency of boiler
ETAc=(Ms/Mf)*(h-hf1)/C;     //thermal efficiency of boiler and grate combined

printf(' (i) The Thermal efficiency of the boiler is: %5.3f ',ETAb);
printf('or %5.2f percent. \n',ETAb*100);
printf(' (ii) The Thermal efficiency of the boiler and grate combined is: %5.3f ',ETAc);
printf('or %5.2f percent. \n',ETAc*100);
