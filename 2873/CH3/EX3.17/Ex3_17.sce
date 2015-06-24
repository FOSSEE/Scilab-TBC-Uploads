// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 3 Example 17")
Cp_H2=14.307;//specific heat of H2 at constant pressure in KJ/kg K
R_H2=4.1240;//gas constant for H2 in KJ/kg K
Cp_N2=1.039;//specific heat of N2 at constant pressure in KJ/kg K
R_N2=0.2968;//gas constant for N2 in KJ/kg K
T1=(27+273);//ambient temperature in K
v1=0.5;//initial volume of H2 in m^3
p1=0.5*10^6;//initial pressure of H2 in pa 
v2=0.25;//final volume of H2 in m^3 
p2=1.324*10^6;//final pressure of H2 in pa
disp("with the heating of N2 it will get expanded while H2 gets compressed simultaneously.compression of H2 in insulated chamber may be considered of adiabatic type.")
disp("adiabatic index of compression of H2 can be obtained as,")
disp("Cp_H2=R_H2*(y_H2/(y_H2-1))")
disp("y_H2=Cp_H2/(Cp_H2-R_H2)")
y_H2=Cp_H2/(Cp_H2-R_H2)
disp("adiabatic index of expansion for N2,Cp_N2=R_N2*(y_N2/(y_N2-1))")
disp("y_N2=Cp_N2/(Cp_N2-R_N2)")
y_N2=Cp_N2/(Cp_N2-R_N2)
disp("i>for hydrogen,p1*v1^y=p2*v2^y")
disp("so final pressure of H2(p2)in pa")
disp("p2=p1*(v1/v2)^y_H2")
p2=p1*(v1/v2)^y_H2
disp("ii>since partition remains in equlibrium throughout hence no work is done by partition.it is  a case similar to free expansion ")
disp("partition work=0")
disp("iii>work done upon H2(W_H2)in J,")
disp("W_H2=(p1*v1-p2*v2)/(y_H2-1)")
W_H2=(p1*v1-p2*v2)/(y_H2-1)
disp("work done upon H2(W_H2)=-2*10^5 J")
disp("so work done by N2(W_N2)=2*10^5 J ")
W_N2=2*10^5;//work done by N2 in J
disp("iv>heat added to N2 can be obtained using  first law of thermodynamics as")
disp("Q_N2=deltaU_N2+W_N2=>Q_N2=m*Cv_N2*(T2-T1)+W_N2")
disp("final temperature of N2 can be obtained considering it as perfect gas")
disp("therefore, T2=(p2*v2*T1)/(p1*v1)")
disp("here p2=final pressure of N2 which will be equal to that of H2 as the partition is free and frictionless")
disp("p2=1.324*10^6 pa,v2=0.75 m^3")
v2=0.75;//final volume of N2 in m^3
disp("so now final temperature of N2(T2)in K")
T2=(p2*v2*T1)/(p1*v1)
T2=1191.6;//T2 approx. equal to 1191.6 K
disp("mass of N2(m)in kg=(p1*v1)/(R_N2*T1)")
m=(p1*v1)/(R_N2*1000*T1)
m=2.8;//m approx equal to 2.8 kg
disp("specific heat at constant volume(Cv_N2)in KJ/kg K,Cv_N2=Cp_N2-R_N2")
Cv_N2=Cp_N2-R_N2
disp("heat added to N2,(Q_N2)in KJ")
disp("Q_N2=(m*Cv_N2*1000*(T2-T1))+W_N2")
Q_N2=((m*Cv_N2*1000*(T2-T1))+W_N2)/1000









