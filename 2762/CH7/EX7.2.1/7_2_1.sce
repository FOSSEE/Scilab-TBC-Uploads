//Transport Processes and Seperation Process Principles
//Chapter 7
//Example 7.2-1
//Principles of Unsteady state and convective mass transfer
//given data
pa1=0.2*101325;//Pa
pa2=0;
P=2*101325;
ya1=pa1/P;
ya2=pa2/P;
yb1=1-ya1;
yb2=1-ya2;
ybm=(yb2-yb1)/((log(yb2/yb1))/log(2.71828183));
kdy=6.78/(10^5);
ky=kdy/ybm;
kg=ky/P;
Na=ky*(ya1-ya2);
mprintf("i) flux=%f kg mol/s m2",Na)
mprintf(" ii) ky=%f kg mol/s m2 mol frac",ky)
mprintf(" iii) kg=%f kg mol/s m2 Pa",kg)
