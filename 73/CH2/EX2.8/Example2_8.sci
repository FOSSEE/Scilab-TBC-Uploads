//Chapter 2_Thick Film and Thin Film Hybrid ICs
//Caption : Thickness
//Example2.8: The bulk resistivity of nichrom is 120uohm-cm. Calculate the thickness T in angstroms of a film with sheet resistivity of 100ohm/square. 
// Solution:
function T=thickness(Ps,p)// Ps: sheet resistivity of nichrom=100ohm/square, p:bulk resistivity of nichrom=120uohm-cm
    T=p/(Ps*10^-8)// since Ps=p/T and 1 angstrom =10^-8cm, so dividing by 10^-8 here
    disp('thickness is=')// include ";" at the time of callimg the function
    disp('angstrom',T)
endfunction
//thickness(100,120*10^-6);