clc
clear
//DATA GIVEN
IP=35;                  //power developed by the engine in kW
m=284;                  //flow rate in kg/h
p1=15;                  //steam inlet pressure in bar
p2=0.14;                //condenser pressure in bar

//At 35 bar and 25 deg celsius from steam tables
h1=2923.3;               //in kJ/kg
s1=6.709;                //in kJ/kgK

//At 0.14 bar, from steam tables
hf2=220;                //in kJ/kg
hf3=hf2;
hfg2=2376.6;            //in kJ/kg
sf2=0.737;              //in kJ/kgK
sfg2=7.296;             //in kJ/kgK

//as the steam expands isentropically, s1=s2
//sg1=sf2+x2*sfg2
x2=(s1-sf2)/sfg2;                    //dryness fraction
h2=hf2+x2*hfg2;

ETArankine=(h1-h2)/(h1-hf2);         //Rankine efficiency

ETAthermal=IP/(m/3600*(h1-hf2));     //Thermal efficiency
ETArel=ETAthermal/ETArankine;        //Relative efficiency

printf(' (i) The Final condition of steam is: %1.2f. \n',x2);
printf(' (ii) The Rankine efficiency is: %1.4f or %2.2f percent. \n',ETArankine,(ETArankine*100));
printf('(iii) The Relative efficiency is: %1.3f or %2.1f percent. \n',ETArel,(ETArel*100));
