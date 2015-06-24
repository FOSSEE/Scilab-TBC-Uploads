

//example 11.3
//calculate
//capacity of siphon
//head required in oggy spillway
//length of oggy weir required
clc;funcprot(0);
//given
t=6;          //tail water elevation
h=1;          //heigth of siphon spillway
w=4;          //width of siphon spillway
hw=1.5;       //head water elevation
C=0.6;        //coefficient of discharge
Co=2.25;      //coefficient of discharge of oggy spillway
lo=4;         //length of oggy spillway
hc=1.5;       //head on weir crest
g=9.81;       //acceleration due to gravity

//part (a)
Q=C*h*w*(2*g*(t+hw))^0.5;
Q=round(Q*10)/10;
mprintf("capacity of siphon=%f cumecs.",Q);

//part (b)
h1=(Q/(Co*lo))^(2/3);
h1=round(h1*100)/100;
mprintf("\nhead required in oggy spillway=%f m",h1);

//part (c)
L=Q/(Co*(hc)^1.5);
L=round(L*100)/100;
mprintf("\nlength of oggy weir required=%f m.",L);
