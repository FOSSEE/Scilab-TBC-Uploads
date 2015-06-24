//Transmission Lines : example 12-8 : (pg 597)
Zo=100;//characteristic impedance
j=%i;
Zl = 200-j*150;//load impedance
l=4.3;//length of transmission line
x=200/Zo;
y=150/Zo;
a=0.4*Zo;
b=0.57*Zo;
mprintf("\nTo normalize the load impedance: \nzL = ZL/Zo  = %.f - j*%.1f",x,y);
//VSWR and equation of zin should b drawn from impedance smith chart,the plotted points should be read
printf("\n zin = 0.4 + j*0.57");//from smith chart
mprintf("\nZin = zin*Zo = %.f Ohm + j* %.f Ohm",a,b);
