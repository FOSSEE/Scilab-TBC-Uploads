//clear//
//Caption:Program to find skin depth, loss tangent and phase velocity
//Example12.6
//page419
clc;
f1 = 1e06; //frequency in Hz
//er1 = 81;
ur = 1;
[uo,eo] = muo_epsilon();//free space permittivity and permeability
sigma = 4;//conductivity of a conductor in s/m
[del] = SkinDepth(f1,uo,ur,sigma);
pi = 22/7;
Lambda = 2*pi*del;
Vp = 2*pi*f1*del;
disp(del*100,'skin depth in cm delta =')
disp(Lambda,'Wavelength in metre Lambda =')
disp(Vp,'Phase velocity in m/sec Vp =')
//Result
//skin depth in cm delta =   
//     25.17737  
//Wavelength in metre Lambda =   
//    1.5825775  
//Phase velocity in m/sec Vp =   
//    1582577.5  
