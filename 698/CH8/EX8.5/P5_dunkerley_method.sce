clc
//Example 8.5
// Dunkerley's Method

//------------------------------------------------------------------------------
//Given Data:

W1=1250
a11=6.213e-8
W2=325
a22=10.697e-8

res5= mopen(TMPDIR+'5_dunkerley_method.txt','wt')

w1=sqrt(9.81/(W1*a11))
mfprintf(res5,'w1 = %0.5f rad/s\n',w1)

w2=sqrt(9.81/(W2*a22))
mfprintf(res5,'w2 = %0.5f rad/s\n',w2)

wc=sqrt((w1^2 * w2^2)/(w1^2 + w2^2))
mfprintf(res5,'wc= %0.1f rad/s\n',wc)

Nc=(wc*60)/(2*%pi)
mfprintf(res5,'Nc= %0.1f rad/s',Nc)

mclose(res5);
editor(TMPDIR+'5_dunkerley_method.txt')

//------------------------------------------------------------------------------
//--------------------------------End of program--------------------------------