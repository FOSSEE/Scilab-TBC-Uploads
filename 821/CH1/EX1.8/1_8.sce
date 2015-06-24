r1=0.53*10^-8;//Bohr radius in cm//
r2=4*r1;//Bohr radius in second state in cm//
printf('Bohr radius in second state=r2=2.12*10^-8cm');
h=6.625*10^-27;//plank's constant//
m=9.11*10^-28;//electron mass in grams//
v2=h/(%pi*m*r2);//electron velocity in second state in cm per sec//
printf('\nElectron velocity in second state=v2=%fcm per sec',v2);
l=(h*10^8)/(m*v2);//De Broglie wavelength of electron in second state in Angstrums//
printf('\nDe Broglie wavelength of electron in second state=l=%fAngstrums',l);
e=1.6*10^-12;//electron charge in ergs//
v=sqrt((2*(10^4)*e)/m);//velocity of the moving electron in second state in cm/sec//
printf('\nVelocity of moving electron in second state=v=%fcm per sec',v);
l1=(h*10^8)/(v*m);//De Broglie wavelength of moving elctron in Angstrums//
printf('\nDe Broglie wavelength of moving electron in secondstate=l1=%fAngstrums',l1);
