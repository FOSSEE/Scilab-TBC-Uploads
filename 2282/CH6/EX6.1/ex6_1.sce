// Example 6.1, page no-230
clear
clc
t=20       //TDMA frame length in ms
lc=352     //length of carrier and clock recovery frequency in bits
lu1=48     //length of unique word in bits
lo=510     //length of order wire channel in bits
lm= 256    //length of management channel in bits
lt=320     // length of transmit timming channel in bits
ls1=24     // length of service channel in bits
gt=64      // Guard time in bits
rb=2       // reference burst

lr=lc+lu1+lo+lm+lt
tb=lc+lu1+lo+ls1
tob=(lr*rb)+(tb*t)+((t+rb)*gt)
printf("(a)\nThe length of reference burst(from given data) is %d bits\n\n(b)\nThe length of traffic burst premable(from given data)is %d bits\n\n(c)\nTotal number of overhead bits is %d bits",lr,tb,tob)
