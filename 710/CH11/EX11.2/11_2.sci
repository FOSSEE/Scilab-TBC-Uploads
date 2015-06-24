clc();
clear;
//To determine the binding energy per nucleon of U with mass no. 235
M=235.043945;         //atomic mass of uranium
Z=92;                 //atomic number of uranium
mp=1.007825;                                 //mass of proton
N=143;                                      //no.of neutrons
mn=1.008665;                                //mass of neutron
A=235;                                     //number of nucleons
B=[[(Z*mp)+(N*mn)-(M)]/A]*931.5            //Binding energy in MeV
printf("The binding energy per nucleon is %f MeV",B);
