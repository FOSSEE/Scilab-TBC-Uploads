// Chapter8
// Determine appropiate heat sink rating
// Page.No-296
// Example8_7
//Figure 8.34
// Given
clear;clc;
Tj=150;           // in degree C
Ta=40;           // in degree C
Qjc=3.0;          // in  C/W
Qcs=1.6;          // in  C/W
PD=6;           //in W
Qsa=(Tj-Ta)/PD - Qjc-Qcs;
printf("\n Value of Qsa = %.2f C/W\n",Qsa); // Result
