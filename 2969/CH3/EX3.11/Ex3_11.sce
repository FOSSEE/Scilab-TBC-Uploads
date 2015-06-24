clc
clear
//DATA GIVEN
//initial state
p1=1.02;                        //initial pressure of air in bar
V1=0.015;                       //initial volume of air in m^3
T1=22+273;                      //initial temperature of air in K
//final state
p2=6.8;                         //final pressure of air in bar
//Law of adiabatic compression, pV^g=C

//gamma for air, g
g=1.4
R=0.287;

//In a adiabatic process
//(T2/T1)=(p2/p1)^((g-1)/g);
T2=T1*(p2/p1)^((g-1)/g);;       //final temp. T2 in K

//p1*(V1^g)=p2*(V2^g)
V2=V1*(p1/p2)^(1/g);            //final volume in m^3

m=p1*10^5*V1/10^3/R/T1;         //mass in kg

//W=(p1*V1-p2*V2)/(g-1)=mR(T2-T1)/(g-1)
W=m*R*(T1-T2)/(g-1);
//since W is -ve, the work is done on the air

printf(' (i) The Final temperature is: %3.2f deg. celsius. \n',(T2-273));
printf(' (ii) The Final Volume is: %1.5f m^3. \n',V2);
printf('(iii) The Work done on the air is: %1.3f kJ. \n',(-W));
