//To determine the d.c. output voltage when delay anglw (a)0 (b)30 (c)45
clear
clc;
Vo=3*sqrt(2)*110/%pi;
Vd=Vo*(cosd(0) + cosd(15))/2;
Vd1=Vo*(cosd(30) + cosd(45))/2;
Vd2=Vo*(cosd(45) + cosd(60))/2;
mprintf("(a)For a=0, Vd=%.2f kV\n",Vd);
mprintf("(b)For a=30,Vd=%.2f kV\n",Vd1);
mprintf("(c)For a=45,Vd=%.2f kV\n",Vd2);
