// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 7 Example 2")
m=1;//mass of air in kg
Po=1*10^5;//atmospheric pressure in pa
To=(15+273);//temperature of atmosphere in K
Cv=0.717;//specific heat at constant volume in KJ/kg K
R=0.287;//gas constant in KJ/kg K
Cp=1.004;//specific heat at constant pressure in KJ/kg K
T=(50+273);//temperature of tanks A and B in K
disp("In these tanks the air stored is at same temperature of 50 degree celcius.Therefore,for air behaving as perfect gas the internal energy of air in tanks shall be same as it depends upon temperature alone.But the availability shall be different.")
disp("BOTH THE TANKS HAVE SAME INTERNAL ENERGY")
disp("availability of air in tank,A")
disp("A=(E-Uo)+Po*(V-Vo)-To*(S-So)")
disp("=m*{(e-uo)+Po(v-vo)-To(s-so)}")
disp("m*{Cv*(T-To)+Po*(R*T/P-R*To/Po)-To(Cp*log(T/To)-R*log(P/Po))}")
disp("so A=m*{Cv*(T-To)+R*(Po*T/P-To)-To*Cp*log(T/To)+To*R*log(P/Po)}")
disp("for tank A,P=1*10^5 pa,so availability_A in KJ")
P=1*10^5;//pressure in tank A in pa
availability_A=m*{Cv*(T-To)+R*(Po*T/P-To)-To*Cp*log(T/To)+To*R*log(P/Po)}
disp("for tank B,P=3*10^5 pa,so availability_B in KJ")
P=3*10^5;//pressure in tank B in pa
availability_B=m*{Cv*(T-To)+R*(Po*T/P-To)-To*Cp*log(T/To)+To*R*log(P/Po)}
disp("so availability of air in tank B is more than that of tank A")
disp("availability of air in tank A=1.98 KJ")
disp("availability of air in tank B=30.98 KJ")
