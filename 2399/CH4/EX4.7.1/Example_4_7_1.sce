// Example 4.7.1 
clc;
clear;
d=5;     //core diameter
alpha=0.4;  //attenuation
B=0.5;    //Bandwidth
lamda=1.4;   //wavelength
PB=4.4d-3*d^2*lamda^2*alpha*B;      //computing threshold power for SBS
PR=5.9d-2*d^2*lamda*alpha;      //computing threshold power for SRS
PB=PB*10^3;
PR=PR*10^3;
printf("\nThreshold power for SBS is %.1f mW.\nThreshold power for SRS is %.3f mW.",PB,PR);
printf("\nNOTE - Calculation error in the book while calculating threshold for SBS.\nAlso, while calculating SRS, formula is taken incorrectly, Bandwidth is multiplied in second step, which is not in the formula.");
//Calculation error in the book while calculating threshold for SBS. Also, while calculating SRS, formula is taken incorrectly,Bandwidth is multiplied in second step, which is not in the formula
//answers in the book
//PB=30.8mW
//PR=0.413mW
