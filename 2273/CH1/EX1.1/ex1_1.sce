//Find the copper saving
clear;
clc;
//soltion
//given
v1=240;//volt//initial voltage of the system
v2=500;//volt //final voltage of the system
printf("Volume at 240 volts (vol1) = (4*P^2*d*l)/(%d*W)\n",v1^2/4);
printf("Volume at 500 volts (vol2) = (4*P^2*d*l)/(%d*W)\n",v2^2/4);
printf("Percentage saving in copper = ((vol1-vol2)*100)/vol1\n");
s = (((1/v1^2)-(1/v2^2))/(1/v1^2))*100;
printf("The percentage saving of the copper is, %.2f percent",s);
