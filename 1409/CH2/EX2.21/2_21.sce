clc;
//Page no:2-31
//Example-2.21
//Given antenna current is 12A when only carrier is sent. It is increased to 15A when carrier is modulated by 1kHz sine wave
It=15;
Ic=12;
u=sqrt(2*[(It/Ic)^2-1]);
disp(u,'u=');
u1=u*100;
disp(+'%',u1,'i.e');
u2=0.7;
Itot=Ic*sqrt(1+(u2^2/2));
disp(+'Amp',Itot,'It=');
