clc
disp("Example 9.9")
printf("\n")

s=%s ;
H=syslin ( 'c',(0.4*(s^2+12))/((s+2)*(s+6) ) ) ;
evans (H,1)
//If s=1Np/s
H1=0.4*(1+12)/((1+2)*(1+6))
printf("H(1)=%0.3f\n",H1)
 