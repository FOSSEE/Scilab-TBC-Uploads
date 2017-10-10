// Chapter 11 Example 1//
clc
clear
// number of units=n,voltage across topmost unit=v1,voltage across second unit=v2//
n=4;
m=10;// capacitance ratio is 10 (given)//
v1=1;//let v1=1 for our conveniance//
v2=v1*(1+1/m);
//voltage across third and fourth units from top =v3,v4 respectively//
v3=v1*(1+(3/m)+(1/m^2));
V3=v1+v2+v3;// let V3 be a variable for our ease//
v4=v3+(V3/m);
// operating voltage =v//
v=33; // in kV//
vc=v/sqrt(3);
vo=vc/(v1+v2+v3+v4);// since capacitance voltage equals voltage across whole string by interchanging sides we get//
v1=v1*vo;
printf("\n So voltage across the topmost unit V1 =  %.2f kV\n",v1);
v2=v2*vo;
printf("\n So voltage across the second unit V2 =  %.2f kV\n",v2);
v3=v3*vo;
printf("\n So voltage across the third unit V3 =  %.2f kV\n",v3);
v4=v4*vo;
printf("\n So voltage across the fourth unit V4 =  %.3f kV\n",v4);
//string efficiency =sf//
sf=vc/(n*v4);
printf("\n String effiency =  %.2f percent\n",sf*100);








