//chapter 14
//example 14.5
//page 302

P1=1.5 // W
P2=0.3 // W
Pi=10d-3 // W

// power gain at 2 kHz
Ap1=10*log10(P1/Pi)

// power gain at 20 Hz
Ap2=10*log10(P2/Pi)

Ap_diff=Ap1-Ap2
printf("fall in gain from 2 kHz to 20 Hz = %.3f db \n",Ap_diff)
