//chapter-12,Example12_9,pg 509

//ROM 22*5*7

N=5//no. of gates in bitand plane

n=22//no.of inputs

f=913//refresh rate

//considering column display

ts=(1/(N*f*n))//ROM access time

printf("ROM access time\n")

printf("ts=%.6f s\n",ts)
