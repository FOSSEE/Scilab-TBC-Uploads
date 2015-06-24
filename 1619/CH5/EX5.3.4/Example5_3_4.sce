//Example 5.3.4 page 5.9

clc;
clear ;

LED_output = 3;
PIN_sensitivity = -54;
allowed_loss= LED_output -(-PIN_sensitivity);
Lcoupling = 17.5;
cable_atten = 30;
power_margin_coupling= 39.5;
power_margin_splice=6.2;
power_margin_cable=9.5;
final_margin= power_margin_coupling+power_margin_splice+power_margin_cable;
printf("The safety margin is %.2f dB",final_margin)
//Answer in book is wrong...
printf("\n\n***NOTE- Answer wrong in book...");
