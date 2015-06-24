clc
clear
//DATA GIVEN
T1=38+273;                      //initial temperature in K
T3=1950+273;                    //maximum temperature K
rp=15;                          //pressure ratio
//for air, gamma=1.4
g=1.4;

//for adiabatic compression 1-2
//p1(V1^gamma)=p2(V2^gamma)
//(V1/V2)=r
r=(rp)^(1/g);

//Thermal efficiency ETAth=1-1/(r)^(g-1)
ETAth=1-1/(r)^(g-1);

//for adiabatic compression 1-2
//(T2/T1)=(V1/V2)^(g-1)
//(V1/V2)=r
T2=T1*r^(g-1);

//for adiabatic expansion 3-4
//(T3/T4)=(V4/V3)^(g-1)
//(V4/V3)=r
T4=T3/r^(g-1);

//heat supplied per kg of air, Qs=m*Cv*(T3-T2)
R=0.287; 
Cv=R/(g-1);
Qs=Cv*(T3-T2);

//heat rejected per kg of air, Qr=m*Cv*(T4-T1)
Qr=Cv*(T4-T1);

W=Qs-Qr;                        //work done per kg of air

printf(' (i) The compression ratio is: %1.1f.\n',r);
printf(' (ii) The Thermal efficiency is: %1.3f or %2.1f percent. \n',ETAth,(ETAth*100));
printf('(iii) The Work done is: %3.1f kJ or %6.0f Nm.',W,(W*1000));

//NOTE:
//there is slight variation in answers in the book because of rounding off of the values
