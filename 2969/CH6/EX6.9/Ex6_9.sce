clc
clear
//DATA GIVEN
Ma=7.5;             //mass of steam generated per kg of coal
p=11;               //steam pressure in bar
Tfw=70;             //temp. of feed water temp. in deg celsius
eta=75;             //efficiency of boiler in %
Fe=1.15;            //factor of evaporation
Cps=2.3;            //specific heat of steam in kJ/kgK

//from steam table, corresponding to 11 bar,
hf=781.4;           //in kJ/kg
hfg=1998.5;         //in kJ/kg
Ts=184.1+273;       //in K
hf1=4.18*(Tfw-0);

//Factor of evaporation,Fe=[{hf+hfg+Cps*(Tsup-Ts)}-hf1]/2257
Tsup=[Fe*2257+hf1-hf-hfg]/Cps+Ts;        //Tsup in K
x=(Tsup-Ts);                             //degree of superheat in deg. celsius

//Boiler efficiency eta=Ma*(h-hf1)/C;
h=[hf+hfg+Cps*(Tsup-Ts)];
C=Ma*(h-hf1)/(eta/100);                  //calorific value of coal in kJ/kg
Me=Ma*(h-hf1)/2257;                      //Equivalent evaporation im kg

printf(' (i) The Temperature of steam generation, Tsup is: %5.1f K\n',Tsup);
printf('      The Degree of superheat is: %5.1f deg celsius.\n',x);
printf(' (ii) The calorific value of coal, C is: %5.0f kJ/kg. \n',C);
printf('(iii) The Equivalent evaporation, Me is: %5.3f kg. \n',Me);
