

//example 8.10
//calculate width of base if no tension is to develop
//check the stability
clc;funcprot(0);
//given
c=1;
hw=6;              //heigth of water in reservior
Bt=1.5;            //width of top of dam
H=6;              //heigth of the dam
gamma_m=20;       //unit weigth of masonary 
gamma_w=9.81;    //weigth density of water
f=1800;          //compressive strength
miu=0.6;         //coefficient of friction

//to develop no tension e=b/6;x=b/3.
//hence on solving the relations we get

P=poly([-39.074 2.944 1],'b','c');    //equation is written wrong in book
wb=roots(P);                          //sign of coefficient is 2.944 is not taken correctly in book


//roots are 4.94 and -7.89
//since negative value cannot be taken

wb=4.94;
mprintf("Neglecting the negative value.\nWidth of base is=4.94 m.");
W1=Bt*gamma_m*H;
W2=gamma_m*H*(wb-Bt)/2;
L1=(wb-Bt)+(Bt/2);
L2=(2*(wb-Bt))/3;
M1=W1*L1,
M2=W2*L2;
U=gamma_w*H*c*wb/2;
L4=2*wb/3;
M4=U*L4;
W3=gamma_w*H^2/2;
L3=hw/3;
M3=W3*L3;
SumW=W1+W2-U;
SumM=M1+M2-M4-M3;
pn=2*SumW/wb;
pn=round(pn*10)/10;
mprintf("\nMaximum stress=%f kN/square.m.",pn);
mprintf("\nDam is safe against compression");
FOS=miu*SumW/W3;
FOS=round(FOS*100)/100;
mprintf("\nFactor of safety against sliding=%f. <1",FOS);
mprintf("\nDam is unsafe against sliding.");

