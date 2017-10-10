// Exa 10.5
// To calculate the optimum diameter (DH), spacing (S) for the antenna and total length of the antenna,
// To calculate the antenna gain, 
// To calculate the beam width of the antenna.

clc;
clear all;

N=12; //number of turns
fr=1.8; //frequency in GHz

//solution
lamda=3*10^8/(fr*10^9);
DH=lamda/%pi;// diameter of helix in milli-meters
S=lamda/4;//turn spacing in millimetres
L=N*S;
G=15*N*S*(DH*%pi)^2/lamda^3;
Theta=52*lamda/(%pi*DH)*sqrt(lamda/(N*S));
printf('The optimim diameter is %d mm\n ',DH*1000);
printf('Spacing is  %.1f mm\n ',S*1000);
printf('Total Length of antenna is %d mm\n ',L*1000);
printf('The antenna gain is %.1f dBi\n ',10*log10(G));
printf('The BeamWidth of antenna is %d degrees \n ',Theta);
