clc
clear
//DATA GIVEN
p1=15;                          //pressure of steam sample in bar
p3=1;                           //pressure of steam at exit in bar
Tsup3=150+273;                  //temperature os steam at the exit in K
Mw=0.5;                         //discharge from separating calorimeter in kg/min
Ms=10;                          //discharge from throttling calorimeter in kg/min

p2=p1;
//At p1=p2=15 bar, from steam tables
hf2=844.7;                      //in kJ/kg
hfg2=1945.2;                    //in kJ/kg

//At p3=1 bar and 150 deg. celsius, from steam tables
hsup3=2776.4;                   //in kJ/kg

//h2=h3.....hf2+x2*hgf2=hsup3
x2=[hsup3-hf2]/hfg2;            //dryness fraction x2

x1=(x2*Ms)/(Mw+Ms);             //quality of steam supplied, x1

printf('The Quality of steam supplied, x1 is: %1.3f.',x1);
