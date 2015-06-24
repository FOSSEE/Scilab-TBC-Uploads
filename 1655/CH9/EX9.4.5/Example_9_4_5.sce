// Example 9.4.5  page 9.16

clc;
clear;

output=22;      //laser output
sensitivity=-35;    //APD sensitivity
sl=0.05; //loss correspond to one splice in dB
fl=0.4;    //fiber loss in dB/km
connector_loss=2;
saftey_margin=6;
penalties=1.5
allowed_loss=output-sensitivity;
Length = (allowed_loss-(connector_loss+penalties+saftey_margin))/(sl+fl);
Length=floor(Length);
printf("\nLink length is %d km.",Length);
