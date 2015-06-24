// to calculate (a)reactance in ohms(b)line voltage,kva rating,series reactance for Y/Y   and Y/D conn

clc;
Xpu=0.12;    // of 1-ph transformer

function [X]=Xohm(kv,MVA)
    X=(Xpu*kv^2)/MVA;
endfunction

disp('(a)');
MVAa=75*10^-3;
Vhv=6.6;    
Vlv=.4;
Xhv=Xohm(Vhv,MVAa);     disp(Xhv,'X(ohm)of hv side');
Xlv=Xohm(Vlv,MVAa);     disp(Xlv,'X(ohm)of lv side');

disp('(b)');
disp('Y/Y');
MVAb=MVAa*3;
Vhv=6.6*sqrt(3);    disp(Vhv,'V_hv(kV)');
Vlv=.4*sqrt(3);     disp(Vlv,'V_lv(kV)');
Xhv=Xohm(Vhv,MVAb);     disp(Xhv,'X(ohm)of hv side');
Xlv=Xohm(Vlv,MVAb);     disp(Xlv,'X(ohm)of lv side');

disp('Y/D');
MVAb=MVAa*3;
Vhv=6.6*sqrt(3);    disp(Vhv,'V_hv(kV)');
Vlv=.4;             disp(Vlv,'V_lv(kV)');
Xhv=Xohm(Vhv,MVAb);     disp(Xhv,'X(ohm)of hv side');
Xlv=Xohm(Vlv,MVAb);     disp(Xlv,'X(ohm)of lv side');
