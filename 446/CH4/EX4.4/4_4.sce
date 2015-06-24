clear
clc
disp('Ex-4.4(a)');
m=9.11*10^-31;v=3.6*10^6; //'m','v' - mass an velocity of the electron in SI units
h=1.05*10^-34; //planck's constant in SI
p=m*v; //momentum
delp=p*0.01;//due to 1% precision in p
delx = h/delp//uncertainity in position
printf('Uncertainity in position is %1.2f nm',delx*10^9);
disp('Ex-4.4((b)')
printf('Since the motion is strictly along X-direction, its velocity in Y direction is absolutely zero.\n So uncertainity in velocity along y is zero=> uncertainity in position along y is infinite. \nSo nothing can be said about its position/motion along Y')