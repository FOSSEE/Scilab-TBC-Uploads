//Chapter 2_Thick Film and Thin Film Hybrid ICs
//Caption : Ratio
//Example2.11: Two thin resistor are measured at 50 degree celcius and 100degree celsius and are found to have the following values:
//Temperatur(degree C)                Ra(ohm)           Rb(ohm)
//      50                              50                100
//      100                             51                102.1
//Calcullate the ratio TCR in ppm/degree celcius.
//Solution: 
function TCR= ratio(Rat1,Rbt1,Rat2,Rbt2,T1,T2)
    TCR=(Rat2/Rbt2-Rat1/Rbt1)*10^6/((Rat1/Rbt1)*(T1-T2))
    disp('ratio TCR is=")// iinclude ";" at the time of calling the function at last
    disp('ppm/degree Celsius',TCR)//ppm: part per million
endfunction
//ratio(100,50,102.1,51,100,50);