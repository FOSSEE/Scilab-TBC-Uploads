clc
clear
//INPUT DATA
i=4//the intensity of a source when 4 such drills are working at the same distance away
I1=95//The noise level of sound from a drill in dB

//CALCULATION
I2=(10*(log10(i)))//intensity of source in dB
IL=I1+I2//The noise level at this point when 4 such drills are working at the same distance away in dB

//OUTPUT
printf('The noise level at this point when 4 such drills are working at the same distance away is %3.2f dB',IL)
