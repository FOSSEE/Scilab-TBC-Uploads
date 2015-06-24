//5(b) is as follows:
clc
clear
//DATA GIVEN
m=6.75;                 //mass of air in kg/min
p1=1;                   //pressure in bar
T1=21+273;              //temp. in K
p2=1.35;                //pressure in bar
T2=43+273;              //temp. in K
DTcw=3.3;               //temp. rise of cooling water in deg. celsius
Cp=1.003;               //Cp for air in kJ/kgK
//gamma for air=1.4
g=1.4;

W=m*Cp*(T2-T1);         //work in kJ/min
//If the compression would have been isotropic,
//T_2=T1*(rp)^[(g-1)/g]
rp=p2/p1;
T_2=T1*(rp)^[(g-1)/g];
Qr=m*Cp*(T_2-T2);       //heat rejected to cooling water

Mw=Qr/[4.18*(DTcw)];    //mass of cooling water in kg/min

printf(' (i) The Work is: %3.2f kJ/min. \n',W);
printf(' (ii) The Mass of cooling water is: %1.2f kg/min. \n',Mw);

//NOTE:
//in the question compression process is mentioned and p2 is given as 0.35 bar (p2<p1)
//which is wrong and further p2 is given as 1.35 bar which is allowable
//so here value of p2 is taken as 1.35 bar.
