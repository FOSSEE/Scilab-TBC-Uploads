

//Example No.4.2.
//Page No.134.
clc;clear;
h = 6.626*10^(-34);//Planck's constant.
m0 = 9.1*10^(-31);//mass of electron.
c = 3*10^(8);//Velocity of ligth.
cosq = cosd(90);//Scattering angle -[degree].
delW = (h/(m0*c))*(1-cosq);//Compton's shift
delW = delW*10^(10);
printf("\na)The Comptons  shift is  %.5f A",delW);
w = 2;//Wavelength -[A]
W = (delW+w);// Wavelength of the scattered photon.
printf("\nb)The wavelength of the scattered photon is % 5f A",W);
E = (h*c)*((1/(w*10^(-10)))-(1/(W*10^(-10))));//Energy of the recoiling electron in joules.
printf("\nc)The energy of the recoiling electron in joules is %3.3e J",E);
E = (E/(1.6*10^(-19)));//Energy of the recoiling electron in eV.
printf("\nc)The energy of the recoiling electron in eV is %3.3e eV",E);
sinq = sind(90);
Q = (((h*c)/w)*sinq)/(((h*c)/w)-((h*c)/W)*cosq);
theta = atand(Q);
printf("\ne)The angle at which the recoiling electron appears is %.0f degree",theta); 
