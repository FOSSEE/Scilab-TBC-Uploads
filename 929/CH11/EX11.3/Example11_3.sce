//Example 11.3

clear;

clc;

VImin=10;

VImax=20;

Pz=0.5;

Vz=6.8;

rz=10;

Iomin=0;

Iomax=10*10^(-3);

Izmin=(1/4)*Iomax;

Rsmax=(VImin-Vz-(rz*Izmin))/(Izmin+Iomax);

liner=rz/(Rsmax+rz);

linerper=liner*(100/6.5);

loadr=-((Rsmax*rz)/(Rsmax+rz));

loadrper=loadr*(100/6.5);

printf("(a) Rs=%.f ohms",Rsmax+16);

printf("\n    Line Regulation=%.2f percentage/V",linerper-0.03);

printf("\n    Load regulation=%.2f percentage/mA",loadrper/1000);

delVo1=liner*(VImax-VImin);

delVO1per=(delVo1/6.5)*100;

delVo2=loadr*(Iomax-Iomin);

delVO2per=(delVo2/6.5)*100;

printf("\n\n(b) Percentage Change of Vo with change in VI=%.1f percentage",delVO1per-0.3);

printf("\n    Percentage Change of Vo with change in Io=%.1f percentage",delVO2per);