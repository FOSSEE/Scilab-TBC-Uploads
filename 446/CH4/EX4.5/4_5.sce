clear
clc
disp('Ex-4.5(a)');
m=0.145;v=42.5; //'m','v' - mass an velocity of the electron in SI units
h=1.05*10^-34; //planck's constant in SI
p=m*v; //momentum
delp=p*0.01;//due to 1% precision in p
delx = h/delp//uncertainity in position
printf('Uncertainity in position is %1.2e',delx);
disp('Ex-4.5(b)');
printf('Motion along y is unpredictable as long as the veloity along y is exactly known(as zero).');