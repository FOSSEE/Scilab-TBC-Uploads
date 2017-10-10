// Exa 11.4
// To  calculate-
//(a) data symbol transmitted per hop, and 
//(b) the number of nonoverlapping hop frequencies.

clc;
clear all;

R=120; //transmission rate in kbps
Hop=2000; //per second
Spectrum=10; //in MHz

//solution
//For 32-FSK
Bits_sym=log2(32);
SR=R/Bits_sym;
printf('Bits per symbol are %d \n ',Bits_sym);
printf('Hops per second are 2000 and Symbol rate is %d kbps\n ',SR);
disp("Since the symbol rate is higher than the hop rate, the system is a slow FHSS system.");
Sym_hop=SR*10^3/Hop;
Min_BW=Sym_hop*SR;
Nonoverlap_hop=Spectrum*10^3/Min_BW;
disp("");
printf(' Symbols transmitted per hop are %d \n ',Sym_hop);
printf('Number of non-Overlapping hop frequencies are %d \n ',round(Nonoverlap_hop));
