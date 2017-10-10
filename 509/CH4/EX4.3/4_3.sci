//Chapter 4 Example 3//
clc
clear
// class demand factor=c,//
l1=400;l2=380;l3=350;l4=300;l5=350;l6=500;l7=700;l8=750;l9=900;l10=1200;l11=1350;l12=1200;l13=1000;l14=950;l15=1250;l16=1300;l17=1400;l18=1300;l19=1500;l20=1800;l21=2000;l22=1950;l23=1000;l24=800;// in kWh//
// class contribution factor of street load=cs, of rest of load=cr//
sl=200;// in kW//
md1=sl;// since max demand is street lighting load//
cde=0;// class demand=cde//
cs=cde/md1;
md2=l20;// here non coincident max demand=l20//
cde=l20;
cr=cde/md2;
// diversity factor=df//
df=(md1+md2)/(cs*md1+cr*md2);
printf("\n Diversity factor = %.3f \n",df);
// coincidence factor=cd//
cf=1/df;
printf("\n Coincidence factor  = %.2f\n",cf);
