//chapter-12,Example12_7,pg 509

Br=576*10^3//bit rate conversion

n=8//resolution requirement per channel

fs=1000//sampling rate

N=(Br/(fs*3*n))//no. of channels

printf("no. of channels accomodated\n")

printf("N=%.2f \n",N)