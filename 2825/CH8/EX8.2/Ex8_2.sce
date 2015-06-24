//Ex8_2 pg-435
clc

ff=4 //feedback factor
BW=6*10^(6) //bandwidth in Hz

BW_fb=BW*(1+ff) //Bandwidth with feedback factor(since Beta is +ve)
printf("Bandwidth with feedback factor = %.0f MHz",BW_fb*10^-6)
