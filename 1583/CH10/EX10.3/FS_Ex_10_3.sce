clc
//Chapter 10:Frequency Synthesizers
//Example 10.3 page no 416
fr=1*10^6//reference frequency
f=100*10^6//given frequency
fi=1*10^6//increment in frequency
Dmin=fr*f/fi
mprintf('The value of Dmin is %d Hz',Dmin)
