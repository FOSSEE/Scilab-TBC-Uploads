clc;
//page no 463
//prob no. 14.3
//Cable with teflon dielectric er=2.1
er=2.1;c=3*10^8;//Velocity of light
//Determination of velocity factor
Vf=1/sqrt(er);
disp(Vf,'The value of velocity factor is');
//Determination of propagation velocity
Vp=Vf*c;
disp('m/s',Vp,'The value of propagation velo. is');