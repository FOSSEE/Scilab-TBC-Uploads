// Chapter 10 example 4
//------------------------------------------------------------------------------
clc;
clear;

// Given data
f       = 10*10^9;          // operating frequency in Hz
f_us    = 100*10^3;         // upsweep freq
f_ds    = 100*10^3;         // downsweep freq
Tus     = 5*10^-3;          // up-sweep period
Tds     = 5*10^-3;          // down-sweep period
T       = 10*10^-3           
B       = 10*10^6;          // sweep bandwidth
c       = 3*10^8;           // vel of EM waves in m/s
f_us_b  = 80*10^3;          // upsweep freq in fig b
f_ds_b  = 50*10^3;          // downsweep freq in fig b
f_us_c  = 50*10^3;          // upsweep freq in fig b
f_ds_c  = 80*10^3;          // downsweep freq in fig b

// Calculations
// a
fd      = (f_us - f_ds)/2;      // doppler shift
df      = (f_us + f_ds)/2;      // freq diff
Vr_a    = (c*fd)/(2*f);         // radial velocity
R       = (c*Tus*df)/(2*B);       // Range
if Vr_a == 0 then
    mprintf('Case a:\n Radial velocity = %d \n Range = %3.3f Km\n',Vr_a,R/1000);
end
// b
fd      = (f_us_b - f_ds_b)/2;      // doppler shift
df_b    = (f_us_b + f_ds_b)/2;      // freq difference due to range
R_b     = (c*T*df_b)/(2*B);       // Range
Vr_b    = (c*fd)/(2*f);         // radial velocity
mprintf(' Case b:\n Radial velocity = %3.2fm/s \n Range = %3.3f Km\n',Vr_b,R_b/1000');
mprintf(' As the up-sweep frequency difference is less than downspeed freq diff, this implies that doppler shift is\n contributing towards an increase in the echo signal freq. so, target is moving towards radar\n')
// c
fd      = (f_us_c - f_ds_c)/2;      // doppler shift
df_c    = (f_us_c + f_ds_c)/2;      // freq difference due to range
R_c     = (c*T*df_c)/(2*B);       // Range
Vr_c    = (c*fd)/(2*f);         // radial velocity
mprintf(' Case c:\n Radial velocity = %3.2f m/s \n Range = %3.3f Km\n',abs(Vr_c),R_c/1000');
mprintf(' As the up-sweep frequency difference is greater than downspeed freq diff, this implies that doppler shift is\n contributing towards an decrease in the echo signal freq. so, target is moving away from radar')
