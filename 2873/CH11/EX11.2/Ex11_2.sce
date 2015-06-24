// Display mode
mode(0);
// Display warning for floating point exception
ieee(1);
clear;
clc;
disp("Engineering Thermodynamics by Onkar Singh Chapter 11 Example 2")
Q=800;//refrigeration capacity in tons
Q_latent=335;//latent heat for ice formation from water in KJ/kg
T1=(-7+273);//temperature of reservoir 1 in K
T2=(27+273);//temperature of reservoir 2 in K
disp("refrigeration capacity or heat extraction rate(Q)in KJ/s")
Q=Q*3.5
disp("let the ice formation rate be m kg/s")
disp("heat to be removed from per kg of water for its transformation into ice(Q1)in KJ/kg.")
Q1=4.18*(27-0)+Q_latent
disp("ice formation rate(m)in kg=refrigeration capacity/heat removed for getting per kg of ice")
m=Q/Q1
disp("COP of refrigerator,=T1/(T2-T1)=refrigeration capacity/work done")
COP=T1/(T2-T1)
disp("also COP=Q/W")
disp("so W=Q/COP in KJ/s")
W=Q/COP
disp("HP required")
W=W/0.7457
disp("NOTE=>In book,this question is solved by taking T1=-5 degree celcius,but according to question T1=-7 degree celcius so this question is correctly solved above by considering T1=-7 degree celcius.")
