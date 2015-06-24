// Chapter 1
//Ordinary Gain 
//page 16
//Example no 1-5
//Given
clc;
Ao=2;       //in Volt
Ai=50;       // in milliVolt
Ai1=0.05;       //input in Volt
Av=Ao/Ai1;
printf("\n The ordinary power gain %.0f \n ",Av); // Result
Av1=20*log10(Av);
printf("\n The power gain is %.2f dB\n",Av1);// Result



