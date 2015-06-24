clc
p1=75.882; //cm of Hg
T1=286; //K
V1=0.08; //m^3
p2=76; //cm of Hg
T2=288; //K

V2=p1*V1*T2/p2/T1;

m=28; //kg
c=4.18;
t2=23.5; //0C
t1=10; //0C

Q_received=m*c*(t2-t1);

HCV=Q_received/V2;
disp("Higher calorific value =")
disp(HCV)
disp("kJ/m^3")

amt=0.06/0.08; //Amount of vapour formed per m^3 of gas burnt
LCV=HCV-2465*amt;
disp("Lower calorific value =")
disp(LCV)
disp("kJ/kg")