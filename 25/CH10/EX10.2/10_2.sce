//example:-10.2,page no.-559.
// program to design an e plane resonance isolatorin x band waveguide.
er=13;revatt=30;
deltaH=200;x=1700;  // x=4*%pi*Ms.
f=10*10^9;alpha_=12.4; // from graph 10.13.
L=revatt/alpha_; 
alpha_1=27/L;  
disp(L,'for total reverse attenuation of 20 db,the length of the slab in cm must be = ')
disp(alpha_1,'for total reverse attenuation to be at least 27 db, alpha_ in db/cm be > ')