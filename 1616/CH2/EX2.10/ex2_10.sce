// ex2.10  from the previous problem find impedence at 50cm on either side
yl=complex(0.05,10);
cosha=cosh(yl);
coshb=cosh(-yl);
sinha=sinh(yl);
sinhb=sinh(-yl);
zo=50;
zl=complex(100,50);
za=zo*((zl*cosha+zo*sinha)/(zl*sinha+zo*cosha));
zb=zo*((zl*coshb+zo*sinhb)/(zl*sinhb+zo*coshb));
disp('impedence at +50cm is= '+string(za)+' ohm');
disp('impedence at -50cm is= '+string(zb)+' ohm');

