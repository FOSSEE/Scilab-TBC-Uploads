//Chapter 2_Thick Film and Thin Film Hybrid ICs
//Caption : Length
//Rxample2.9: Calculate the length of a 400ohm thin film resistor.Given a sheet resistivity oof 100ohm/square and a resistor width of 100um
//Solution: 
clear;
clc;
function L=extent(r,w,Ps)// L:length of thin film, r:resistance of thin film=400ohm, w:width of resistor=100um, Ps:sheet resistance=100ohm/square
    L=r*w/(10^-6*Ps)//since, r=Ps*L/w and length in micrometer so dividing by 10^-6.
    disp('length of thin film is=')// include";" at the time of calling the function at last
    disp('micrometer',L)
endfunction
//extent(400,100*10^-6,100);