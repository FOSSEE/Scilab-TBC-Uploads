//Chapter 2_Thick Film and Thin Film Hybrid ICs
//Caption : Sheet Resistivity
//Example2.3: Calculate the sheet resistivity of a square of thick film resistor material with the following properties: bulk resistivity=10^-1ohm-cm and thick film thickness=10micrometer.
//Solution:
clear;
clc;
function Ps=myfunction4(p,t)// Ps:sheet resistance, p:bulk resistivity of thick film=10^-1(or 0.01), t:thickness of thick film=10micrometer(=10*10^-4=0.001)
    Ps=p/t// since, sheet resistance of the film=bulk resistance of the film/thickness of the film
    disp('sheet resistivity is=')// include ";" atat the time of calling the function
    disp('ohm per square',Ps)
endfunction
//myfunction4(10^-1,10*10^-4);