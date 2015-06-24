//Chapter 13
//page no 569
//given
clc;
clear all;
Vu3=1.24;           //in V
Vbeq3=0.7;          //in V
Vbeq4=0.7;          //in V
R5=17.5;            //in Ohm
R6=17.5;            //in Ohm
Voh=5;          //in V
Vol=0;          //in V
If=(Vu3-Vbeq3)/R5+(Vu3-Vbeq4)/R6;
printf("\n If= %0.1f mA\n",If*1000);
R3=(Voh-Vol)/If;
printf("\n R3= %0.0f ohm\n",R3);
C4=2*10^-9/R3;
printf("\n C4= %0.0f pF\n",C4*10^12);
//Chapter 13
//page no 581
//given
disp("Page number 581 again  Example 13-2 (numbering mistake)")
Er=4.9;
h=5;                //in mils
w=10;                //in mils
t=0.5;                //in mils
Z=60/sqrt(0.475*Er+0.67)*log(4*h/0.67/(0.8*w+t));
printf("\n Z = %0.1f ohm\n",Z);
tpd=1.017*sqrt(0.475*Er+0.67);
printf("\n tpd = %0.2f ns/ft\n",tpd);
Tpd=tpd*1000/12;           //converted into ps/in
printf("\n tpd = %0.2f ps/in\n",Tpd);
Co=Tpd/Z;
printf("\n Co = %0.1f pF/in\n",Co);

