//Example 5.3.5 page 5.10

clc;
clear;

optical_power=-10;
receiver_sensitivity=-41;
total_margin= optical_power-receiver_sensitivity;
cable_loss= 7*2.6;
splice_loss= 6*0.5;
connector_loss= 1*1.5;
safety_margin= 6;
total_loss= cable_loss+splice_loss+connector_loss+safety_margin;
excess_power_margin= total_margin-total_loss;
printf("The system is viable and provides %.1f dB excess power margin.",excess_power_margin);
