clc;
//e.g 34.7
Vz=5.1;
rz=10;
Izmin=1*10**-3;
Izmax=15*10**-3;
Rs=600;
Vomin=Vz+Izmin*rz;
disp('V',Vomin*1,"Vomin=");
Vsmin=Izmin*Rs+Vomin;
disp('V',Vsmin*1,"Vsmin=");
Vomax=Vz+Izmax*rz;
disp('V',Vomax*1,"Vomax=");
Vsmax=Izmax*Rs+Vomax;
disp('V',Vsmax*1,"Vsmax=");
