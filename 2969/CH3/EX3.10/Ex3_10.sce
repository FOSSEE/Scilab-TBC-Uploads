clc
clear
//DATA GIVEN
//initial state
p1=10^5;                        //initial pressure of gas in Pa
V1=0.45;                        //initial volume of gas in m^3
T1=80+273;                      //initial temperature of gas in K
//final state
p2=5*10^5;                      //final pressure of gas in Pa
V2=0.13;                        //final volume of gas in m^3

//gamma for air, g
g=1.4;
R=294.2                         //J/kgK

m=p1*V1/R/T1;                   //mass in kg

//p1*(V1^n)=p2*(V2^n)
n=log(p1/p2)/log(V2/V1);        //index n

//In a polytropic process
//(T2/T1)=(V1/V2)^(n-1);
T2=T1*(V1/V2)^(n-1);            //temp. T2 in K

Cv=R/(g-1);
Du=m*Cv*(T2-T1)/1000;           //increase in internal energy in kJ

//using First Law of Thermodynamics, Q=(u2-u1)+W
//W12=(p1*V1-p2*V2)/(n-1)=mR(T2-T1)/(n-1)
W12=m*R*(T1-T2)/(n-1)/1000;
Q=Du+W12;
//since Q is -ve, there is rejection of heat from system to surroundings

printf(' (i) The Mass of the gas is: %1.3f kg. \n',(m));
printf(' (ii) The index n is: %1.3f. \n',(n));
printf('(iii) The change in internal energy is: %2.1f kJ. \n',(Du));
printf(' (iv) The Heat REJECTED is: %2.2f kJ. \n',(-Q));
