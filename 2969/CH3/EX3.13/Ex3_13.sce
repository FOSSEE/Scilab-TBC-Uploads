clc
clear
//DATA GIVEN
m=1;                            //mass of etahne gas in kg
M=30;                           //molecular weight of ethane
p1=1.1;                         //initial pressure in bar
T1=27+273;                      //initial temperature in K
p2=6.6;                         //final pressure in bar
Cp=1.75;                        //in kJ/kgK

//Law of compression, pV^1.3=C
n=1.3;

//Characteristic gas constant, R = Universal gas constant (Ro)/Molecular weight(M)
Ro=8314;
R=Ro/M/1000;                    //kJ/kgK

//R=Cp-Cv
Cv=Cp-R;
g=Cp/Cv;                        //gamma g

//In a polytropic process
//(T2/T1)=(p2/p1)^((n-1)/n);
T2=T1*(p2/p1)^((n-1)/n);;       //final temp. T2 in K

//W=(p1*V1-p2*V2)/(n-1)=mR(T2-T1)/(g-1)
W=m*R*(T1-T2)/(n-1);

Q=[(g-n)/(g-1)]*W;              //heat flow in kJ/kg

printf(' The Heat SUPPLIED is: %2.1f kJ/kg. \n',(Q));
