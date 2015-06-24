

//example14.22
//calculate bed width and floor depth
clc;funcprot(0);
//given
Q=30;              //discharge
V=1;               //velocity of flow

A=Q/V;
//perimeter of section=30/D-D/2
//taking its derivative w.r.t to D
D=1/((1.914/30)^0.5);
//from equation of area
B=30/D-D/2;
B=round(B*10)/10;
D=round(D*100)/100;
mprintf("Width of channel section=%f m.",B);
mprintf("\nDepth of channel section=%f m.",D);

