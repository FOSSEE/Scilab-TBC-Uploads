// Chapter 10 example 5
//------------------------------------------------------------------------------
clc;
clear;

// Given data
f       = 10*10^9;          // operating freq in Hz
PRF     = 1000;             // pulse rep. rate
Vr      = 1000;             // radial velocity
c       = 3*10^8;           // vel. of EM waves in m/s

// Calculations
fd      = (2*Vr*f)/c        // true doppler shift
fA1     = modulo( modulo(fd,PRF)-PRF,PRF)
fA2     = modulo( modulo(fd,PRF)+PRF,PRF)
if fA1 < fA2 then
    fd  = fA1;         // apparent doppler shift
else
    fd  = fA2;         // apparent doppler shift
end
Vr      = (c*fd)/(2*f);     // radial velocity in m/s

//output
mprintf('Radial velocity = %3.2f m/s\n The radar measures the target to be moving away from the radial velocity at %3.2f m/s though in reality\n it is moving towards the radar with a velocity of 1000 m/s',Vr,abs(Vr));
//------------------------------------------------------------------------------
