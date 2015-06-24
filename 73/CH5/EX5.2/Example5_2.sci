//Chapter 5_Monolithic Components
//Caption : Unit gain frequency
//Example5.2: a) Find Fl(unit gain frequency ) for the lateral pnp device. Assume diffusion cofficient of holes in the base of 0.5 sq cm/sec and base width of 10um.
// b) Find the Fs(unit gain frequency) for the substrate pnp device.Assume D=20 sqcm/sec and W=8um.
clear;
clc;
//a)Solution: for the lateral pnp device
Wl=10*10^-4;//base width in micro centimeter(ucm)
Dl=0.5;// base diffusion cofficient in sq cm/sec
Fl=2*Dl/(Wl^2);
disp('unit gain frequency for lateral pnp  device is;' )
disp('MHz',Fl/10^6)
//b)Solution: for substrate pnp device
Ws=8*10^-4;// base in ucm
Ds=20;//base diffusion cofficient in sq cm/sec
Fs=Ds/(Ws^2);
disp('unit gain frequency for substrate pnp device is;')
disp('MHz',Fs/10^6)