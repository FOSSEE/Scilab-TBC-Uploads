//=======================================================================
//chapter 4 example 5

clc;
clear;


//input data
 e0     = 8.85*10^-12;          //abslute permitivity in (m^-3)*(kg^-1)*(s^4)*(A^2)
 E      = 600*10^2;             //strength in V/cm
 er1    = 2.28;          //dielectric constant of benzene in coulomb/m
 er2    = 81;           //dielectric constant of water in coulomb/m


//fomula
//p=e0*E*(er-1)
//calculation
 pB     = e0*E*(er1-1);     //polarisation of benzene in c/m^2
 pW     = e0*E*(er2-1);        //polarisation of water in c/m^2
 

//result
 mprintf('polarisation of benzene=%3.2e.c/m^2\n',pB);
 mprintf('polarisation of water=%3.2e.c/m^2\n',pW);

//========================================================================
