// Example 9.4.3  page 9.13

clc;
clear;

output=-10;      //laser output
sensitivity=-41;    //APD sensitivity
L=7;   //length in km
sl=0.5; //loss correspond to one splice in dB
fl=2.6;    //fiber loss in dB/km
connector_loss=1.5;
saftey_margin=6;

allowed_loss=output-sensitivity;
splices_loss=(L-1)*sl;
fiber_loss=L*fl;
margin=allowed_loss-(splices_loss+fiber_loss+connector_loss+saftey_margin);

printf("\nFinal margin is %.1f dB.",margin);
