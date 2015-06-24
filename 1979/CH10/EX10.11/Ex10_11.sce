//chapter-10 page 490 example 10.11
//==============================================================================
clc;
clear;

D=1;//Assume diameter of the parabolic reflectors in the original system in m
w=1;//Assume wavelength in m

//CALCULATION
D1=2*D;//diameter of the parabolic reflectors in the modified system in m
G=6*(D/w)^2;//gain in original system
G1=6*(D1/w)^2;//gain in modified system
GdB=10*log10(G1/G);//Overall gain that can be expected in dB
GdBo=2*GdB;//Overall gain of the system(combining the two antennas one at the Tx and other at the Rx) in dB

//OUTPUT
mprintf('\nOverall gain that can be expected is GdB=%1.0f dB \nOverall gain of the system(combining the two antennas one at the Tx and other at the Rx) is GdBo=%1.0f dB',GdB,GdBo);

//=========================END OF PROGRAM=============================== 

//Note: Check the answer once ..it should be GdB=10log(4)=6 dB and GdBo=12dB
