// chapter 4 example 4
//-----------------------------------------------------------------------------
clc;
clear;
// given data
CF      = 20;           // coupling factor in dB
D       = 30;           // Directivity in dB
Pin     = 10;           // input power in dBm

// Calculations
// 10logPi = Pin
Pi      = 10^(Pin/10);   // power in mW
I       = D + CF         // isolation in dB
Pc      = Pin - CF;
Pcwatts = 10^(Pc/10)     // power at coupled port in mW
Piso    = Pin - I
Pisowatts = 10^(Piso/10) // Power at isolated port in mW
Po      = Pi -(Pcwatts + Pisowatts);    // power at o/p port in mW

// Output
mprintf('Power Available at the output port = %3.5f mW',Po);
//------------------------------------------------------------------------------
