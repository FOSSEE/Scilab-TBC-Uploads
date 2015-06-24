//Chapter 2_Thick Film and Thin Film Hybrid ICs
//Caption : Absolute Coefficient
//Example2.10:A thin film resistor measures 150ohmat 25degree celcius and 151.5ohm at 100degree celcius. Calculate its absolute coefficient of resistance in parts per million(ppm) per degre celcius.
//Solution:
clear;
clc;
function TCR=absresistor(Rt1,Rt2,T1,T2)// TCR:absolute temperature coefficient of resistance, Rt1:resistance at 100 degree celcius=150ohm, Rt2:resistance at 25degree celcius=151.5ohm, T1:temperature=100degree celcius, T2:temperature=25degree celcius
    TCR=(Rt2-Rt1)*10^6/(Rt1*(T1-T2)) 
    disp('absolute coefficient of resistance is=")// include ";" at the time of calling the function at last
    disp('ppm/degree Celsius',TCR)// ppm: part per million
endfunction
//absresistor(150,151.5,100,25);