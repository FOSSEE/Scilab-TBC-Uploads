//Electric Power Generation, Transmission and Distribution by S.N.Singh
//Publisher:PHI Learning Private Limited
//Year: 2012 ; Edition - 2 
//Example 7.2
//Scilab Version : 6.0.0    ; OS : Windows

clc;
clear;


rad_atomic_mass=226.095;                             //Atomic Mass of Radium in amu
rad_decay_const=1.3566*10^-11;                       //Decay Constant of Radium in 1/s
Half_life=0.6931/rad_decay_const;                    //Radium Half Life in sec
Half_life_yr=Half_life/(365*24*60*60);               //Radium Half Life in year
N=6.023*10^23/rad_atomic_mass;                       //Number of atoms per gram of Radium
Activity=rad_decay_const*N;                          //Activity of Radium in disintegration/second
Activity_curi=Activity/(3.7*10^10);                  //Activity of Radium in Ci


printf("\nHalf life is %e sec or %.2f yr",Half_life,Half_life_yr);
printf("\nThe initial activity is %.3f Ci",Activity_curi);
