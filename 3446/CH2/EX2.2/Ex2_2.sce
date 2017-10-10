// Exa 2.2
// To find usage in call-seconds,CCS(centrum call seconds) and Erlangs).

clc;
clear all;

Ht=5; //Average holding time in seconds
PC=450; // Peg count for one hour period
OC=0;    // Overflow count

// solution
// usage(Erlangs)=(peg count- overflow count)*Average holding time(in hrs)
U=(PC-OC)*(5/3600);   
printf('Usage = %.3f Erlangs = ',U);

// IN CCS
Uccs=U*36;  // usage in CCS
printf('%.1f CCS = ',Uccs);

Ucs=Uccs *100;  //usage in call-seconds
printf('%d call-seconds\n',Ucs);
