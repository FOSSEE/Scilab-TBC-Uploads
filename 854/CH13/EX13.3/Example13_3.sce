//clear//
//Caption:Program to determine the intrinsic impedance of the unkonwn material
//Eample13.3
//page441
clc;
maxima_spacing = 1.5;//Lambda/2 in metres
Lambda = 2*maxima_spacing; //wavelength in metres
C = 3e08;//free space velocity in m/sec
f = C/Lambda; //frequency in Hz
S = 5; //voltage standing wave ratio
T = (1-S)/(1+S); //reflection coefficient
etta0 = 377;//intrinsic impedance in ohms
ettau = etta0/S;//intrinsic impedance of unkonwn material in ohms
disp(T,'reflection coefficient T=')
disp(ettau,'intrinsic impedance in ohms =')
//Result
//reflection coefficient T =   - 0.6666667  
// intrinsic impedance in ohms =       75.4  
