clc 
//initialisation of variables
V= 4.9 //faraday^-1
c= 0.1 //N
//CALCULATIONS
TK= V*c
Tcl= 1-TK
//RESULTS
printf ('transference number of chlorine= %.3f ',Tcl)
