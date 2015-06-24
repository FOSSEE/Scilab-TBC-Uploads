//chapter 9
//example 9.8
//page 265
clear all;
clc ;
//given
Vdd=24; // supply voltage in volts 
R2=1;//in Mohm
R1=5.6;//in Mohm
VG=Vdd*R2/(R1+R2);//in volts
VG=3.6;
printf("\nVG=%.1f V",VG);
Id=0;//in mA
Rs=2.7;//in Kohm
Rd=Rs;
deltaId=VG/Rs;//mA
printf("\ndeltaId=%.2f mA",deltaId);
Vgs=[3.6 3.6];
Id=[0 1.33]
plot(Vgs,Id)
xtitle('bias line with points X and Y' )
Idmax=2.3;
Idmin=1.7;
Vsmax=Idmax*Rs;
Vsmin=Idmin*Rs;
Vdmax=Vdd-Idmin*Rd;
Vdmin=Vdd-Idmax*Rd;
Vdsmax=Vdd-Idmin*(Rd+Rs);
Vdsmin=Vdd-Idmax*(Rd+Rs);
printf('\nThe desired values are:\nIdmax=%.1f mA\nIdmin=%.1f mA\nVsmax=%.1f V\nVsmin=%.1f V\nVdmax=%.1f V\nVdmin=%.1f V\nVdsmax=%.1f V\nVdsmin=%.1f V',Idmax,Idmin,Vsmax,Vsmin,Vdmax,Vdmin,Vdsmax,Vdsmin);
