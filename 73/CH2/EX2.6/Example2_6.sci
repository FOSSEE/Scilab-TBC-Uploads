//Chapter 2_Thick Film and Thin Film Hybrid ICs
//Caption : Capacitance
//Example2.6: Find out the capacitance of a thick film capacitor,if the dielectric constant Er=100,dielectric film thickness=25micrometer and area A=0.0625 cm square. 
//Solution:
clear;
clc;
function c=capacitance(Er,A,t)
    c=8.8*10^-12*Er*A/(10^-12*t)// capacitance value will be 2.2*10^-10 or 220pF, Eo:dielectric constant of free space=8.8*10^-12, Er: dielectric constant of thick film= 100(given), A:area of thick film=0.0626 cm square( or 0.0625*10^-4m square), t:thickness of the thick film= 25*10^-6m)
    // capacitance=Eo*Er*A/t
    disp('capacitance is=')// c=2.200D-10(=2.2*10^-10)F, include ";" at last at the time of calling the function
    disp('pF',c)//pF:pico Farad
endfunction
//capacitance(100,0.0625*10^-4,25*10^-6);