//Chapter 5
//Example 5-3
//DesignASimpleSwitchArrangement 
//Page 124
clear;clc;
//Given
Edc = 5 ; Erms = 5 ; Epeak = 5 ; Eptop = 5 ;// Voltages of meters 
Ifs = 50*10^-6 ; // Full scale Meter Current
Ri1 = Edc / Ifs ; // DC Voltmeter
Ri2 = 0.90 * (Erms / Ifs );// Rms ac voltmeter ( Sine wave only )
Ri3 = 0.636 * (Epeak / Ifs );//Peak Reading Voltmeter ( Sine wave only )
Ri4 = 0.318 * (Eptop / Ifs );//Peak-to-Peak ac Voltmeter(sine wave only)
printf ( "\n\n Ri1 = %.4f ohm", Ri1 )
printf ( "\n\n Ri2 = %.4f ohm", Ri2 )
printf ( "\n\n Ri3 = %.4f ohm", Ri3 )
printf ( "\n\n Ri4 = %.4f ohm", Ri4 ) 
xcos ('Figure5_3.xcos')
