clc
f=1*10^6;              //Assigning values to parameters
C1=500*10^-12;
C2=600810^-12;
Xl=1/(2*%pi*f*C1);
L=Xl/(2*%pi*f);
R=30.623;
Q=(1/R)*sqrt(L/C1);
disp("Ohms",R,"Resistance');
disp("Henry",L,"Inductance");
disp(Q,"Quality Factor");