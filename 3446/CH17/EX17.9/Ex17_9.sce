//Exa 17.9
// To calculate Radio link budget for uplink and downlink
// Refering Table 17.1 on page no 613

clc;
clear all;

Rc=3.84;//Chip rate in Mcps
Ri=16;//Data rate in kbps
UL=0.5;//UL loading factor
DL=0.9;//DL loading factor
Eb_NtU=4;//in dB
Eb_NtD=6;// in dB
Gm=0;//Mobile antenna gain in dBi
Gb=18;//Base station gain in dBi

//solution
disp("The Okumara-Hata model for an urban macro-cell with a base station antenna height of 25m, a mobile station height of 1.5m, and a carrier frequency of 1950MHz gives Lp =138.5+35.7*log10(R) where R is radius of hexagonal cell");
disp("From table 17.1, Lp(Allowable path loss) for uplink is 139.65 dB");
R=10^((139.65-138.5)/35.7);
printf(' Cell Radius is %.3f km \n ',R);
Area=round(2.6*R^2);
printf('Area covered by hexagonal cell is %d km^2 \n ',Area);
printf('Number of BTSs required to cover an area of 2400 Km^2 are %d \n ',2400/Area);
