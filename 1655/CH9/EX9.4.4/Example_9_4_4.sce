// Example 9.4.4  page 9.14

clc;
clear;

output=-10;      //laser output
sensitivity=-25;    //APD sensitivity
L=2;   //length in km
sl=0.7; //loss correspond to one splice in dB
fl=3.5;    //fiber loss in dB/km
connector_loss=1.6;
saftey_margin=4;

allowed_loss=output-sensitivity;
splices_loss=L*sl;
fiber_loss=L*fl;
margin=allowed_loss-(splices_loss+fiber_loss+connector_loss+saftey_margin);

printf("\nFinal margin is %.1f dB.",margin);

printf("\n\nIf laser launches a optical power of 0 dBm then,\n");

output=0;      //laser output
sensitivity=-25;    //APD sensitivity
saftey_margin=7;
allowed_loss=output-sensitivity;
length_fiber= (allowed_loss-(splices_loss+connector_loss+saftey_margin))/fl;
increase=length_fiber-L;
printf("\nIncrease in the fiber length is %.2f km.",increase);

//answer in the book is 2.28, deviation of 0.01
