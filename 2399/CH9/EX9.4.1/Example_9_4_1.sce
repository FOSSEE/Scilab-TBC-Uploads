// Example 9.4.1 
clc;
clear;
output=13;      //laser output
sensitivity=-31;    //APD sensitivity
coupling_loss=0.5;
L=80;   //length in km
sl=0.1; //loss correspond to one splice in dB
fl=0.35;    //fiber loss in dB/km
noise=1.5;
allowed_loss=output-sensitivity;
splices_loss=(L-1)*sl;
fiber_loss=L*fl;
margin=allowed_loss-(splices_loss+fiber_loss+coupling_loss+noise);
printf("\nFinal margin is %.1f dB.",margin);
