

//example 8.9
//calculate streeses at heel and toe of dam
clc;funcprot(0);
//given
c=1;
hw=6;           //heigth of water in reservior
Bt=1.5;            //width of top of dam
H=6;           //heigth of the dam
wb=4.5;           //width of base of dam
Sg=2.4;           //specific gravity of masonary
gamma_w=9.81;    //weigth density of water

W1=Bt*gamma_w*Sg*H;
W2=gamma_w*Sg*H*(wb-Bt)/2;
L1=(wb-Bt)+(Bt/2);
L2=(2*(wb-Bt))/3,
M1=W1*L1,M2=W2*L2,

//Reaervior empty
SumW=W1+W2;
SumM=M1+M2;
x=SumM/SumW;
e=wb/2-x;
pnt=(SumW/wb)*(1+(6*e/wb));
pnh=(SumW/wb)*(1-(6*e/wb));
pnt=round(pnt*10)/10;
pnh=round(pnh*10)/10;
mprintf("Reservior empty:");
mprintf(" \nNormal stress at toe=%f kN/square.m.",pnt);
mprintf("\nNormal stress at heel=%f kN/square.m.",pnh);

//Reservior full
W3=gamma_w*H^2/2;
U=gamma_w*H*c*wb/2;
SumV=SumW-U;
L3=hw/3;
L4=2*wb/3;             //lever arm
M3=W3*L3;
M4=U*L4;               //moment about toe
SumM1=SumM-M4-M3;
x=SumM1/SumV;
e=wb/2-x;
pnt=(SumV/wb)*(1+(6*e/wb));
pnh=(SumV/wb)*(1-(6*e/wb));
pnt=round(pnt*10)/10;
pnh=round(pnh*10)/10;
mprintf("\n\nReservior full:");
mprintf(" \nNormal stress at toe=%f kN/square.m.",pnt);
mprintf("\nNormal stress at heel=%f kN/square.m.",pnh);

