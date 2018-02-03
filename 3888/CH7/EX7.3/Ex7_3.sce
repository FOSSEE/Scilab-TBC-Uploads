//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 7.3
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


neu_absor=0.80;                                       //Absorbed Neutrons of Uranium_235 in percentage
P=100;                                                //Power of Uranium_235 in kW
use_energy=190;                                       //Useful Energy of Uranium_235 in MeV
energy=use_energy*10^6*1.60*10^-19;                   //Fission Energy of Uranium_235 in J
fission_energy=1/energy;                              //Number of Fission to Produced One Joule of Energy 
nuclei_power=fission_energy*3600*10^6/neu_absor;      //Number of Nuclei Burnt during 1 hour per MW of Power
Mass=nuclei_power*235/(6.023*10^23);                  //Mass of Uranium_235  to produce required Power in g/hr


printf("\nFuel consumption of U-235 to produce 100 MW will be %.4f g/hr",Mass*100);
