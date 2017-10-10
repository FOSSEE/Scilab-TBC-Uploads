//ex2.12  to find max and min current and voltages.

zl=complex(50,-100);
z01=75;
z0=50;
Tl=(zl-z01)/(zl+z01);
Tlabs=abs(Tl);
Vmax=100;
V=Vmax/(1+Tlabs);
Imax=Vmax/z0;
Imin=V*(1-Tlabs)/z0;
Vmin=Imin*z0;
disp('Maximum current Imax is = '+string(Imax)+' A.');
disp('Minimum current Imin is = '+string(Imin)+' A.');
disp('Minimum voltage Vmin is = '+string(Vmin)+' V.');
disp('Maximum voltage will occurs when m = 0,1,2,3...');
disp('Therefore the voltage maxima occurs at');
disp('l = 0.4lamda, 0.9lamda, 1.4lamda...');
