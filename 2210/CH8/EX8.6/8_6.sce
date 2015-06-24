//Chapter 8, Problem 6
clc
f1=70e6                 //section 1, frequency in hertz
f2=5e6                 //section 2, frequency in hertz
f3=400e3                 //section 3, frequency in hertz
f4=80e3                 //section 4, frequency in hertz

//calculation
F3h=f3+f4
F3l=f3-f4

F2h=f2+F3h
F2l=f2-F3h

F1h=f1+F2h
F1l=f1-F2h

printf("Mixer 3 : %d Khz and %d Khz\n",F3h/1000,F3l/1000)
printf("After filter 3 : %d Khz\n\n",F3h/1000)
printf("Mixer 2 : %.2f Mhz and %.2f Mhz\n",F2h/10^6,F2l/10^6)
printf("After filter 2 : %.2f Mhz\n\n",F2h/10^6)
printf("Mixer 1 : %.2f Mhz and %.2f Mhz\n",F1h/10^6,F1l/10^6)
printf("After filter 1 : %.2f Mhz\n\n",F1h/10^6)
