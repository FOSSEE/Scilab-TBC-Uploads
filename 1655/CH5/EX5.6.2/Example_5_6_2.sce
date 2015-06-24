// Example 5.6.2  page 5.32

clc;
clear;

N=16;       //Number of ports
Pin=1d-3;   //input power
Pout=12d-6; //output power

split_loss=10*log10(N);     //computing split loss
excess_loss=10*log10(Pin/(Pout*N));     //computing excess loss
total_loss=split_loss+excess_loss;      //computing total loss
insertion_loss= 10*log10(Pin/Pout);     //computing insertion loss

printf("\nTotal loss is %.2f dB.\nInsertion loss is %.2f dB.",total_loss,insertion_loss);

//answer in the book for Total loss is 19.14, deviation of 0.06dB.
//answer in the book for insertion loss is 19.20, deviation of 0.01dB.
