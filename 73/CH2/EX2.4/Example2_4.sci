//Chapter 2_Thick Film and Thin Film Hybrid ICs
//Caption : Design Capacitor
//Example2.4: Design a circular 100pF capacitor with the thick film dielectric having dielectric film thickness=0.02mm(or 0.002cm), assume Er=100
//Solution: We have to find the radius of crcular capacitor inorder to design it.
clear;
clc;
function r1= myfunction5(c,t)
    r1=c*t// constant=capacitor * thickness of thick film
    Er=100//given relative permeability of thick film
    r=sqrt(r1/(Er*%pi*8.85*10^-12))//radius of circular capacitor, Eo=8,85*10^-12(dielectric constant of free space)
    disp('radius of circular capacitor is=')//include ";" at the time of calling the function 
    disp('meter',r)
endfunction
//myfunction5(100*10^-12,0.002);