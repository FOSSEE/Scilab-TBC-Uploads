

                     // Example  6.4

B=0.9;             // Megnetic Flux Density
N=4000;            // No.Of turns
mo=4*%pi*10^-7;    // Permeability of free Space
Hc=820;            // Megnetic Field Strength for Core 
lc=0.22;           // Length of Circuit 
Ac=50*10^-6;       // Area of Circuit
Fc=Hc*lc;          // Magnetomotive Force (mmf) for Core 
lg=0.001;          // Length of Air Gap 
Ag=50*10^-6;       // Area of Megnetic Circuit
Hg=B/mo;           // Megnetic Field Strength for Air Gap
Fg=Hg*lg;          // Magnetomotive Force (mmf) for Air Gap 
F=Fc+Fg;           // Total Magnetomotive Force (mmf)
I=F/N;             // Formula of Magnetising Current 
disp(' Magnetising Current is = '+string(I)+' Amp');
    
    
    
    
        // p 215    6.4
