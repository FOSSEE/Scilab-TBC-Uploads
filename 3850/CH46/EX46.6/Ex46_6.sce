
//To calculate the energy released in the process when a Nucleus breaks

//Example 46.6

clear;

clc;

A=240;//Mass Number for First Nucleus

Be1=7.6;//Binding Energy in MeV per nucleon for A=120

Be2=8.5;//Binding Energy in MeV per nucleon for A=240

E=A*(Be2-Be1);///Energy released when a nucleus of A=240 breaks into two nuclei of nearle equal mass numbers

printf("Energy released when a nucleus of A=240 breaks into two nuclei of nearly equal mass numbers = %.0f MeV",E);
