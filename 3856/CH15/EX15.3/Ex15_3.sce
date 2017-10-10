//Calculate the Crystal Field Stabilization Energy (CFSE)

//Example 15.3

clc;

clear;

neg=0; //Number of electron in eg orbital

nt2g=5;  //Number of Electron in t2g orbital

CFSE=neg*0.6-nt2g*0.4; //Crystal Field Stabilization Energy (CFSE) in delta (crystal-field spliting)

printf("Crystal Field Stabilization Energy = %.1f delta",CFSE);
