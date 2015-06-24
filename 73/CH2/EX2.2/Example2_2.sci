//Chapter 2_Thick Film and Thin Film Hybrid ICs
//Caption: Resistance calculation
//Example2.2: A thick film resistor is screened with a paste off sheet resistivity 10000 ohm/square,and the resistor is defined as 0.24 cm long and 0.06 cm wide. Calculate the resistance R.
// Solution:
clear;
clc;
function R=myfunction3(p,l,w)//r:resistor, p=sheet resistance=10000 ohm/square, l:length of resistor=0.24cm, w:width of the resistor=0.06cm
    R=p*(l/w)//since, resistance=sheet resistance*(length of resistor/width of the resistor)
    disp('resistance of the thick film resistor is=')// at the time of calling the function include ";" after it
    disp('ohm',R)
endfunction
// myfunction3(10000,0.24,0.06);