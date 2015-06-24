
SR=0.5*(10^6);
//given operating power supplies +-12V
printf("\nGiven operating power supplies +-12V\n");
printf("For 741 op-amp,the output can work typically to within 1V of the power supplies.\nSo,Vom=11V\n");
Vom=11;//in volts
printf("f=(1/(2*pi))*(SR/Vom)\n");
f=(1/(2*%pi))*(SR/Vom);
printf("RESULTS:\n");
printf("Full-power bandwidth frequency f=%d Hz",f);