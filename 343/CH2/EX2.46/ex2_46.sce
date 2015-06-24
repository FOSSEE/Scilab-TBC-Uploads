clc
function vl=f(t), vl=300*sin(1000*t), endfunction;    //Defining functions
R=20;          //Assigning values to parameters
w=1000;
Z=R/cos(%pi/4);
Xc=sqrt(Z*Z-R*R);
Xl=2*Xc;
L=Xl/w;
C=1/(w*Xc);
disp("Henry",L,"Inductance Value");
disp("Farad",C,"Capacitance Value");