// (i) Find the sending end Voltage and the regulation of line (ii) Determine the reactance power supplied by the line and by synchronous capacotor and p.f of line (iii)Determine the maximum power transmitted 
clear
clc;
A=.895;
Vr=215;
B=182.5;
x=A*(Vr^2)/B;
y=78.6-1.4;//b-a
p=acosd(.9);
X1=x/50;
Vs=265*182.5/215;
Vr1=Vs/A;
Reg=100*(Vr1-Vr)/Vr;
mprintf("(i) sending end voltage (kV)=%.1f kV\n",Vs);
mprintf("recieving end voltage =%.0f kV\n",Vr1);
mprintf("Regulation = %.2f percent\n",Reg);
Vs1=236;
Q=Vs1*Vr/B;
QP=.25*50;
PR=.50*50;
cosQ=.958;
mprintf("\n(ii)QP(MVAr)=%.1f MV Ar\n",QP);
mprintf(" PR(MVAr)=%.0f MV Ar\n",PR);
mprintf("CosQ=%.3f \n",cosQ);
MN=4.55;
Sbmax=MN*50;
mprintf("maximum power transmitted =%.1f MW\n",Sbmax);
