clc; clear; close;

Cload=200;//in fF
Cin=2;//in fF
Tnand=4;
Tnor=5;
Tinv=3;
Fanout_d=(Tnand*Tnor*Tinv*Cload/Cin)^(1/3);
Cj2=Tnor*Cload/Fanout_d;disp(Cj2,'Cj+2 (in fermifarad)=');
Cj1=Tinv*Cj2/Fanout_d;disp(Cj1,'Cj+1 (in fermifarad)=');
Cin1=Tnand*Cj1/Fanout_d;disp(Cin1,'Cin(in fermifarad)=');
mprintf('\nfor nand gate:Cin=%ffF , so Wp=Wn=0.5um\n',Cin1);
mprintf('\nfor inverter:Cin=%ffF , so Wp=3um & Wn=1.5um\n',Cj1);
mprintf('\nfor nor gate:Cin=%ffF , so Wp=22um & Wn=5.5um\n',Cj2);
//answers vary due to round off error
