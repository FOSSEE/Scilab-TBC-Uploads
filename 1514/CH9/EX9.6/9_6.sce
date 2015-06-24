//chapter 9
//example 9.6
//page 261
clear all;
clc ;
//given
Vdd=24; // supply voltage in volts 
Rs=1;//in Kohm
Rd=4.7;//in Kohm
Id=[0 5];
Vgs=Id*Rs;
plot(Vgs,Id,'colo','red','marker','o','markeredg','blue','markersize',20)
xtitle('bias line','Vgs','Id')
Idmax=2.6;
Idmin=1.3;
Vsmax=Idmax*Rs;
Vsmin=Idmin*Rs;
Vdmax=Vdd-Idmin*Rd;
Vdmin=Vdd-Idmax*Rd;
Vdsmax=Vdd-Idmin*(Rd+Rs);
Vdsmin=Vdd-Idmax*(Rd+Rs);
printf('\nThe desired values are:\nIdmax=%.1f mA\nIdmin=%.1f mA\nVsmax=%.1f V\nVsmin=%.1f V\nVdmax=%.1f V\nVdmin=%.1f V\nVdsmax=%.1f V\nVdsmin=%.1f V',Idmax,Idmin,Vsmax,Vsmin,Vdmax,Vdmin,Vdsmax,Vdsmin);
