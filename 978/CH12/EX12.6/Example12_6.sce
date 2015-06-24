//chapter-12,Example12_6,pg 508

f=2*10^3//frequency of signal

v=1//velocity of tape

w=0.05*10^-3//gap width

N=22//no.of turns on head

V=31*10^-3//rms voltage o/p

x=(%pi*f*w)/v

x=x*(%pi/180)

M=((V*w)/(2*v*N*sin(x)))//magnetic flux in tape

printf("magnetic flux in tape\n")

printf("M=%.8f Wb\n",M)