clc;
warning("off");
printf("\n\n example6.3 - pg212");
// given
t=[0 0.01 0.02 0.03 0.04 0.05 0.06 0.07 0.08 0.09 0.10 0.11 0.12];
Ux=[3.84 3.50 3.80 3.60 4.20 4.00 3.00 3.20 3.40  3.00 3.50 4.30 3.80];
Uy=[0.43 0.21 0.18 0.30 0.36 0.28 0.35 0.27 0.21 0.22 0.23 0.36 0.35];
Uz=[0.19 0.16 0.17 0.13 0.09 0.10 0.16 0.15 0.13 0.18 0.17 0.18 0.17];
// using the formula AREA=(deltat/2)*(U1+U13+2*(U2+U3+U4+U5+U6+U7+U8+U9+U10+U11+U12))
// for Uxmean
deltat=0.01;
T=t(13)-t(1);
AREA=(deltat/2)*(Ux(1)+Ux(13)+2*(Ux(2)+Ux(3)+Ux(4)+Ux(5)+Ux(6)+Ux(7)+Ux(8)+Ux(9)+Ux(10)+Ux(11)+Ux(12)));
Uxmean=AREA/T;
disp(Uxmean,"Uxmean=");
// for Uymean
deltat=0.01;
T=t(13)-t(1);
AREA=(deltat/2)*(Uy(1)+Uy(13)+2*(Uy(2)+Uy(3)+Uy(4)+Uy(5)+Uy(6)+Uy(7)+Uy(8)+Uy(9)+Uy(10)+Uy(11)+Uy(12)));
Uymean=AREA/T;
disp(Uymean,"Uymean=");
// for Uzmean
deltat=0.01;
T=t(13)-t(1);
AREA=(deltat/2)*(Uz(1)+Uz(13)+2*(Uz(2)+Uz(3)+Uz(4)+Uz(5)+Uz(6)+Uz(7)+Uz(8)+Uz(9)+Uz(10)+Uz(11)+Uz(12)));
Uzmean=AREA/T;
disp(Uzmean,"Uzmean=");
U=(Uxmean^2+Uymean^2+Uzmean^2)^(1/2);
disp(U,"U=");

