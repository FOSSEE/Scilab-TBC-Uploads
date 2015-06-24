clc
clear
//DATA GIVEN
V1=14;                          //quantity of air to be delivered, in m^3/mim
p1=1.013;                       //intake pressure in bar
T1=15+273;                      //intake temperature in K
p2=7;                           //delivery pressure in bar
N=300;                          //speed of compressor in R.P.M.
n=1.3;                          //compression and expansion index
R=0.287;

//clearance volume, Vc = 0.05 Vs    ,Vs=swept volume
//swept volume Vs=V1-V3=V1-Vc=V1-0.05Vs
//V1=1.05Vs 
Vpc=V1/N/2;                                              //(V1-V4) volume induced per cycle in m^3
//V4/V3=(p2/p1)^(1/n)
c=(p2/p1)^(1/n);
//V4=c*V3=c*0.05Vs
//V1-V4=1.05Vs-c*0.05Vs
Vs=Vpc/(1.05)/(1.05-c*0.05);                             //volume swept in m^3

//using relation (T2/T1)=(p2/p1)^((n-1)/n);
T2=T1*(p2/p1)^((n-1)/n);                                 //delivery temp. T2 in K

IP=(n)/(n-1)*p1*10^5*Vpc/100*[(p2/p1)^((n-1)/n)-1];      //indicated power in kW

printf(' (i) The Swept volume of the cylinder, Vs is: %1.4f m^3. \n',Vs);
printf(' (ii) The delivery temperature, Ts is: %3.0f deg. celsius. \n',(T2-273));
printf('(iii) The Indicated power, IP is: %2.2f kW. \n',IP);

//NOTE:
//there is slight variation in answers in textbook due to rounding off of values in book
