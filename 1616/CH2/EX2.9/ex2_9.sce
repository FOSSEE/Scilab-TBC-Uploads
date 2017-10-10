//ex2.9  find the impedence at a distance of 1.5m
k=complex(0.1,10);
zo=complex(50,5);
zl=complex(100,-30);
coshl=cosh(k*1.5);
sinhl=sinh(k*1.5);
z=zo*((zl*coshl+zo*sinhl)/(zl*sinhl+zo*coshl));
disp('impedence Z(l) at 1.5m from load is= '+string(z)+' ohm');

