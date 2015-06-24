//Chapter 9
//page no 337
//given
clc;
clear all;
Alpha=2;
a=25;           //in micrometer
y=2;            //in micrometer
Cgim=2/%pi*(y/a)*(Alpha+2)/(Alpha+1);       //lateral coupling coefficient
printf("\n Csim= %0.3f\n",Cgim);
Lgim=-10*log10(1-Cgim);     //insertion loss
printf("\n Insertion Loss,Lgim= %0.1f dB\n",Lgim);
