// Chapter 1
//Amplifier Gain
//page 17
//Example no 1-6
//Given
clc;
G1=26;      //in dB    
Vin=0.01;  //in volt  
G=10^(G1/20);
printf("\n The ordinary power gain %.2f \n",G);  // Result
Vout=Vin*G;
printf("\n The output voltage is %.4f  V\n",Vout);    // Result

