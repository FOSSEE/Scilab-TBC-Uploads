//Chapter 7, Problem 13
clc;
l1=40*10^-2;;                       //length of iron path
l2=2*10^-3;                         //radial air gap
u0=4*%pi*10^-7;
phi=0.7*10^-3;                      //flux
A=5*10^-4;                          //cross-sectional area
H1=1650;                            //from B–H curve for silicon iron
//Calculation for the silicon iron:
B=phi/A;
mmf1=H1*l1;
//Calculation for the air gap:
H2=B/u0;
mmf2=H2*l2;
mmf=mmf1+mmf2;
disp("From the B–H curve for silicon iron on page 74, when B=1.4T, H =1650A/m.");
printf("Hence m.m.f for the iron path = %d A\n\n\n",mmf1);
disp("The flux density will be the same in the air gap as in the iron,");
printf("Hence m.m.f for the air gap = %d A\n\n\n",mmf2);
printf("Total m.m.f to produce a flux of 0.6mWb = %d A\n\n\n",mmf);
