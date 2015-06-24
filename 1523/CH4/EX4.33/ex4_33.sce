//AC Circuits : example 4.33 :pg(4.27)
Vm=177;
Im=14.14;
phi=30;
V=(Vm/sqrt(2));
I=(Im/sqrt(2));
pf=cosd(30);
P=(V*I*pf);
disp("v(t)=177sin(314t+10)");// value of 10 is in degrees
disp("i(t)=14.14sin(314t-20)");//value of 20 is in degrees
mprintf("\nCurrent i(t) lags behind voltage v(t) by 30degrees");
disp("phi=30degrees");
printf("Power factor       pf=cos(30)=%.3f (lagging)",pf);
printf("\nPower consumed    P=V*I*cos(phi)=%.1f W",P);