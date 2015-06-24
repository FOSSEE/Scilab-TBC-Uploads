clc;
clear all;
Delta=10*1e3;  //maximun derivation in Hz
fi=2.5*1e3;  // intelligence frequency in Hz
highest_needed_sideband=7; //Hz
 
//find Bandwidth; //Hz
mf=Delta/fi;
BW=fi*highest_needed_sideband*2;
disp(+"KHz",BW/1000,"Bandwidth= ");
