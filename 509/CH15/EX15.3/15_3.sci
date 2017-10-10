// Chapter 15 Example 3//
clc
clear
//advance angle=b,extinction angle=c//
b=20;// in degrees//
c=10;
//dc voltage input to inverter = vdi, ac output voltage of inverter =vdoi//
// vdi=vdoi*(cosd(b)+cosd(c))/2 interchanging variables we get//
vd=500;//in kV//
vdoi=2*vd/(cosd(b)+cosd(c));
printf("\n AC Output voltage of the inverter = %.2f kV\n",vdoi);
// ac voltage supply =em//
em=%pi*vdoi/(3*sqrt(3));
printf("\n AC Output voltage = %.2f kV\n",em);