                //EXAMPLE 4-14  PG NO-236
VA=61.38;
R1=60;
R2=110;
R3=25;
V1=120;
V2=40;
V3=60;
I120=(V1-VA)/R1;
disp(' CURRENT is = '+string(I120)+' A');
I40=(VA+V2)/R2;
disp(' CURRENT is = '+string(I40)+' A');
I60=(VA-V3)/R3;
disp(' CURRENT is = '+string(I60)+' A');
