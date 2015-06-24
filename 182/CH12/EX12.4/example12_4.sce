// to find the resistance.,voltage and current in fig 12-8
//examole 12-4 in page364
clc;
// Data given
V=1.0190;// the standard cell voltage in volt, VBC=VB2=V
VB1=3;// terminal voltage of battery B1 in volt
RAB=100; l=100D-2;  //resistance in ohm and length in meter of the wire AB
lBC=50.95D-2;//length of BC in meter
//calculation
printf("At calibiration,\n");
VAB=l*V/lBC;// voltage accross AB in volt where V/lBC is the volatge per unit length
I=VAB/RAB;// current in ampere
printf("current through AB=%d mA\n",I*1000);
R1=(VB1-VAB)/I;// resistance in ohm
printf("Resistance R1=%d ohm\n\n",R1);// R=V/I ohm
printf("Vx=%.2f V\n",94D-2*V/lBC);//volatge Vx in volt when null is obtained at 94.3cm
printf("\nR2=%d K-ohm",(VB1+V)/(20D-6*1000));// R2 in ohm to limit the standard cell current to a maximum of 20 micro-A
//result
//At calibiration,
//current through AB=20 mA
//Resistance R1=50

//Vx=1.88 V

//R2=200 K-ohm 