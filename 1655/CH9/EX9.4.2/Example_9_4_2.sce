// Example 9.4.2  page 9.12

clc;
clear;

output=3;      //laser output
sensitivity=-54;    //APD sensitivity
coupling_loss=17.5;
L=6;   //length in km
sl=1.1; //loss correspond to one splice in dB
n=3;    //number of splices
fl=5;    //fiber loss in dB/km
connector_loss=0.8;

allowed_loss=output-sensitivity;
splices_loss=n*sl;
fiber_loss=L*fl;
margin=allowed_loss-(splices_loss+fiber_loss+coupling_loss+connector_loss);

printf("\nFinal margin is %.1f dB.",margin);
