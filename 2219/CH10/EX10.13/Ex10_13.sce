// Chapter 10 example 13
//------------------------------------------------------------------------------
clc;
clear;
//Given data
PRF_1   = 750;      // pulse rep. freq in Hz
PRF_2   = 1000;     // pulse rep. freq in Hz
PRF_3   = 1250;     // pulse rep. freq in Hz
Ra_1    = 100;      // Apparent range for PRF_1
Ra_2    = 50;       // Apparent range for PRF_2
Ra_3    = 20;       // Apparent range for PRF_3
c       = 3*10^5;   // Vel of EM waves in Km/s

// Calculations
for Nr = 1:6         // Nr = Radar Zones
    R1(Nr)       = Ra_1 + ((c/2)*((Nr - 1)/PRF_1))    // true range in km
     R2(Nr)       = Ra_2 + ((c/2)*((Nr - 1)/PRF_2))    // true range in km
      R3(Nr)       = Ra_3 + ((c/2)*((Nr - 1)/PRF_3))    // true range in km
end

// Output
mprintf('Possible True Range measurements for 750 PPS\n');
mprintf(' = %dkm \n',R1);
mprintf('Possible True Range measurements for 1000 PPS\n')
mprintf(' = %dkm \n',R2);
mprintf('Possible True Range measurements for 1250 PPS\n')
mprintf(' = %dkm \n',R3);
mprintf('The shortest possible range that has been measured at all PRFs is %d Km True Range = %d km',R1(3),R1(3))
   
