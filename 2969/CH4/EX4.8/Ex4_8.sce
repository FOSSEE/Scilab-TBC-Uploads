clc
clear

//At 0.75 bar. From steam tables,
//At 100 deg celsius
T1=100;                  //deg celsius
hsup1=2679.4;            //kJ/kg
//At 150 deg celsius
T2=150;                  //deg celsius
hsup2=2778.2;            //kJ/kg
Cps1=(hsup2-hsup1)/(T2-T1);

//At 0.5 bar. From steam tables,
//At 300 deg celsius
T3=300;                  //deg celsius
hsup3=3075.5;            //kJ/kg
//At 400 deg celsius
T4=400;                  //deg celsius
hsup4=3278.9;            //kJ/kg
Cps2=(hsup4-hsup3)/(T4-T3);

printf(' (i) The mean specific heat for superheated steam \n      (At 0.75 bar, between 100 and 150 deg celsius) is: %1.3f. \n',Cps1);
printf(' (ii) The mean specific heat for superheated steam \n      (At 0.5 bar, between 300 and 400 deg celsius) is: %1.3f. \n',Cps2);
