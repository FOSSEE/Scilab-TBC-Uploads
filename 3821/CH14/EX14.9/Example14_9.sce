////Chapter No 14 Air Standard Cycles
////Example No 14.9 Page No 311
///Find Work done per Kg of air
//Input data
clc;
clear;
P1=0.1;                    //Beginning compression in MPa
T1=40+273;                 //Beginning temp in degree celsius
eta=0.55;                  //Standard effeciency in %
QR=540;                    //Rejected heat in KJ/Kg
r=7.36;                    //Compression ratio
gamma1=1.4;
Cv=0.718;

//Calculation
//eta=(1-(1/(r^(gamma-1))))
QS=(-QR/(eta-1));          //Heat supplied/unit mass in KJ/Kg
WD=QS-QR;                  //Work done per Kg of air in KJ/Kg
T2=T1*(r^(gamma1-1));      //Temp at end of compression in K
P2=P1*((r)^gamma1);        //pressure at point 2 in MPa
T3=(QS/Cv)+T2;             //max temp of the cycle in K
P3=(T3/T2)*P2;             //max pressure of the cycle in MPa

//Output
printf('Heat supplied/unit mass= %f KJ/Kg \n',QS);
printf('Work done per Kg of air= %f KJ/Kg \n',WD);
printf('Temp at end of compression= %f K \n ',T2);
printf('pressure at point two= %f MPa \n',P2);
printf('max temp of the cycle= %f K \n',T3);
printf('max pressure of the cycle= %f MPa \n',P3);
