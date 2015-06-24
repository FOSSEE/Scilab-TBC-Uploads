clc;
v=10;      //velocity in min/hr
p=80;      //power required in hp
v=v*1.47;   //converting v to ft/sec
P=p*550;    //converting P to ft.lb/sec
F=P/v;      //calculating resistive force required
disp(F,"Resistive force required in lb = ");  //displaying resistive force required.