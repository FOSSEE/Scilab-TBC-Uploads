clc
clear
//DATA GIVEN
V1=0.08;                 //gas burnt in calorimeter in m^3
Pg=5.2;                  //pressure of gas supply in cm of water
Pb=75.5;                 //barometer reading in cm of Hg
Ww=28;                   //weight of water heated by gas in kg
Tg=13;                   //temperature of gas in deg celsius
Twi=10;                  //temperature of water at inlet in deg celsius
Two=23.5;                //temperature of water at outlet in deg celsius
Ms=0.06;                 //steam condensed in kg

//CALCULATIONS
//by using general gas equation, reducing the volume to S.T.P.
//p1*V1/T1=p2*V2/T2
p1=Pb+(Pg/13.6);         //in cm of Hg
T1=Tg+273;               //in K
p2=76;                   //in cm of Hg
T2=15+273;               //in K
V2=p1*V1*T2/T1/p2;       //in m^3
Hw=Ww*4.18*(Two-Twi);    //heat recieved by water in kJ
HCV=Hw/V1;               //higher calorific value of fuel in kJ/m^3
LCV=HCV-2465*Ms/V1;      //lower calorific value of fuel in kJ/m^3

printf(' The Calorific values of fuel per m^3 of gas at 15 deg celsius and 76 cm of Hg pressure are: \n');
printf('  The Higher calorific value of fuel, H.C.V. is: %5.1f kJ/m^3. \n',HCV);
printf('  The Lower calorific value of fuel, L.C.V. is: %5.1f kJ/m^3. \n',LCV);
