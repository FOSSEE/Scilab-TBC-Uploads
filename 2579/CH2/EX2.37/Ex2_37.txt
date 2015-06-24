//Ex:2.37
clc;
clear;
close;
// It is assume that
// 1. short dipole is coincide with x-axis
// 2. Plane polarized wave in travelling along y-axis and including current along the x-axis of antenna which constant throughout the length of the dipole and in the same phase
// 3. Length of the short dipole is small in comparison to wavelength i.e. dl<<y
// 4. Antenna losses are zero.
// i.e.,     RL=Rr+Rl
// or        RL=Rr,       Rl=0
// As we know max-effective aperture is given by
// (Ae)max=V^2/(4*pi*P*Rr)
// where, V=induced voltage, P=poynting vector, Rr=radiation resistance
// As we here, V=E*dl, P=E^2/n W/m^2, where, n=intrinsic impedence of free space and E=Electric field intensity
// the radiation Resistance of short dipole antenna is given by
// Rr=80*pi^2*(dl/y)^2 in ohm
// then (Ae)max=(E*dl)^2/(4*(E^2/n)*(80*pi^2)*(dl/y)^2)
//       (Ae)max=(n*y^2)/(80*pi^2*4)=(120*pi*y^2)/(320*pi^2)
//              =(3*y^2)/(8*pi)=0.119*y^2
printf("The maximum effective aperture of a short dipole antenna, (Ae)max=0.119*y^2, where y is wavelength");