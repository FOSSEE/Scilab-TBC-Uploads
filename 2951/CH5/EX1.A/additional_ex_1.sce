clear;
clc;
//("current through the capacitor is i=C(dv/dt)");

t=15; //acquisition time in us
i=5; //current in mA
v=5; //maximum voltage across capacitor in V


// to satisfy current requirement
disp("to satisfy current requirement");
C_current_req=i*t/v;
disp(C_current_req,"C(nF)=");

//to satisfy accuracy requirement
disp("to satisfy accuracy requirement");

C_accuracy_req=t/(6.9*15)*1000;// to convert into "nanoFarad"

disp(C_accuracy_req,"C(nF)=");

disp("to satisfy both requirements,smaller of the two can b taken");

