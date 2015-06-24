clc
h2=1450.22; //kJ/kg
h3a=1488.57; //kJ/kg
h_f4=366.072; //kJ/kg
cpl2=4.556; //kJ/kg K
cpv1=2.492; //kJ/kg K
cpv2=2.903; //kJ/kg K
T1=303; //K
T2=308; //K
s3a=5.2086; //kJ/kg K
s2=5.755; //kJ/kg K
T3a=308; //K
N=1000;

h_f4a=h_f4-cpl2*(T2-T1);
h1=h_f4a;
T3=T3a*%e^((s2-s3a)/cpv2);
h3=h3a+cpv2*(T3-T3a);
m=50/(h2-h1);


disp("(i) Power required =")
P=m*(h3-h2);
disp(P)
disp("kW")


disp("(ii) Cylinder dimensions ")
D=(m*4*60/%pi/1.2/N/0.417477)^(1/3);
disp("Diameter of cylinder =")
disp(D)
disp("m")

L=1.2*D;
disp("Length of the cylinder=")
disp(L)
disp("m")