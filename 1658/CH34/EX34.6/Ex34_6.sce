clc;
//e.g 34.6
vs=30;
rs=240;
vz=12;
rl=500;
vl=vz;
disp('V',vl,"vl=");
Is=(vs-vz)/rs
Vd=Is*rs;
disp('V',Vd*1,"Vd=");
Iz=Is-(vl/rl)
disp('A',Iz*1,"Iz=");
