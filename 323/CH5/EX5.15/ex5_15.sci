//Chapter 5,Ex5.16,Pg5.18
clc;
//Let x=cos(phi) and y=sin(phi)
x=0.8
y=0.6
vr=1
vx=5
//For 0.8 lagging power factor
percentreg=vr*x+vx*y
printf("\n Percentage regulation=%.1f percent \n",percentreg)
//For unity power factor
x=1
y=0
percentreg=vr*x+vx*y
printf("\n Percent regulation=%.0f percent \n",percentreg)
//For 0.8 leading pf
x=0.8
y=0.6
percentreg=vr*x-vx*y
printf("\n Percent regulation=%.1f percent \n",percentreg)
