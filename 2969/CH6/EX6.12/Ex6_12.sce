clc
clear
//DATA GIVEN
hsup=3373.7;               //enthalpy of steam (at 100 bar,500 deg. celsius) in kJ/kg
hf1=677;                   //enthalpy of feed water (at inlet temp. 160 deg. celsius) in kJ/kg
hf=1407.65;                //ennthalpy of saturated liquid at 100 bar in kJ/kg
hg=2724.7;                 //ennthalpy of saturated vapout at 100 bar in kJ/kg
Ms=100000;                 //rate of steam generation in kg/hr
eta=88;                    //efficiency of steam generation
C=21000;                   //calorific value of fuel in kJ/kg

//eta=(heat absorbed by steam per hr)/(heat added by fuel per hour)
m=Ms*(hsup-hf1)/(C*(eta/100));      //fuel burning rate in kg/hr
htotal=hsup-hf1;                    //total heat supplied to steam formation
Pec=(hf-hf1)/htotal;                //% of heat absorbed in economiser
Pev=(hg-hf)/htotal;                 //% of heat absorbed in evaporator
Ps=(hsup-hg)/htotal;                //% of heat absorbed in superheater

printf(' (i) The Fuel burning rate, m is: %5.1f kJ/h. \n',m);
printf(' (ii) The Percentage of heat absorbed in economiser is: %5.4f or %5.2f percent.\n',Pec,(Pec*100));
printf('      The Percentage of heat absorbed in evaporator is: %5.4f or %5.2f percent.\n',Pev,(Pev*100));
printf('      The Percentage of heat absorbed in superheater is: %5.4f or %5.2f percent.\n',Ps,(Ps*100));
