//Problem 41.01: The ratio of output power to input power in a system is
//(a)2 (b) 25 (c) 1000 and (d) 0.01
//Determine the power ratio in each case (i) in decibels and (ii) in nepers.

//initializing the variables:
//ratio of output power to input power
rp1 = 2;
rp2 = 25; 
rp3 = 1000;
rp4 = 0.01;

//calculation:
//power ratio in decibels
rpd1 = 10*log10(rp1)
rpd2 = 10*log10(rp2)
rpd3 = 10*log10(rp3)
rpd4 = 10*log10(rp4)
//power ratio in nepers
rpn1 = (log(rp1))/2
rpn2 = (log(rp2))/2
rpn3 = (log(rp3))/2
rpn4 = (log(rp4))/2

printf("\n\n Result \n\n")
printf("\n power ratio in decibels are (a)%.0f dB (b)%.0f dB (c) %.0f dB and (d) %.0f dB",rpd1,rpd2,rpd3,rpd4)
printf("\n power ratio in nepers are (a)%.3f Np (b)%.3f Np (c) %.3f Np and (d) %.3f Np",rpn1,rpn2,rpn3,rpn4)