clc;
//from example 12.7 Idqmax and Idqmin
Idqmax=0.006;
Idqmin=0.0015;
Vdd=10;
Rs=500;
Rd=500;
Vdsqmax=Vdd-Idqmin*(Rs+Rd);
Vdsqmin=Vdd-Idqmax*(Rs+Rd);
disp('V',Vdsqmax,"Vsdqmax=")
disp('V',Vdsqmin,"Vsdqmin=")
disp('The value of Vdsq will fall between Vdsqmax and Vdsqmin')

 

 

