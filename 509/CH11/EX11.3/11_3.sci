//Chapter 11 Example 3//
clc
clear
// from the diagram line voltage=5V and potential across each disk=V//
vl=5;
vd=1;
s1=vd/(vl-vd);
printf("\n At point A line to pin capacitance =  %.2fC \n",s1);
// at point b v=2V//
vd=2;
s2=vd/(vl-vd);
printf("\n At point B line to pin capacitance =  %.2fC \n",s2);
// at point c v=3V//
vd=3;
s3=vd/(vl-vd);
printf("\n At point C line to pin capacitance =  %.2fC \n",s3);
// at point d v=4V//
vd=4;
s4=vd/(vl-vd);
printf("\n At point D line to pin capacitance =  %.2fC \n",s4);