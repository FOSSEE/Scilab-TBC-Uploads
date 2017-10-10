//Example 2.11
clear;
clc;

//Given
R=8.314;// gas constant in J K^-1 mol^-1
t1=300;// temperature in K
p1=1000;// initial pressure in Mpa
p2=100;// final pressure in Mpa
Cv=1.5*R;// heat capacity at constant volume in J K^-1 mol^-1
W=0.1;// weight of CO taken in kg
n=1;//moles of the gas

// To determine q,w,delH and delE
Cp=Cv+R;//heat capacity at constant pressure
//(a) isothermal reversible
w=(-1)*R*t1*log(p1/p2);//work done in J
q=(-1)*w;//heat in J
//(b) isothermal irreversible
w1=(-1)*R*t1*(1-(p2/p1));//work done in J
q1=(-1)*w1;//heat in J
//(c) adiabatic reversible
t2=t1*((p2/p1)^(R/Cp));
delE=n*Cv*(t2-t1);//change in internal energy in J
delH=n*Cp*(t2-t1);//change in enthalpy in J
//(d) adiabatic irreversible
T2=t1*((Cv+((p2/p1)*R))/Cp);//final temperature in K
delE1=n*Cv*(T2-t1);//change in internal energy in J
delH1=n*Cp*(T2-t1);//change in enthalpy in J
mprintf('(a) w = %f J mol^-1,delH = 0 J mol^-1,q= %f J mol^-1 and delE = 0 J mol^-1',w,q);
mprintf('\n (b) w = %f J mol^-1,delH = 0 J mol^-1,q= %f J mol^-1 and delE = 0 J mol^-1',w1,q1);
mprintf('\n (c) T2 = %f K,w = %f J mol^-1,delH = %f J mol^-1,q= 0 J mol^-1 and delE = %f J mol^-1',t2,delE,delH,delE);
mprintf('\n (d) T2 = %f K,w = %f J mol^-1,delH = %f J mol^-1,q= 0 J mol^-1 and delE = %f J mol^-1',T2,delE1,delH1,delE1);
//end