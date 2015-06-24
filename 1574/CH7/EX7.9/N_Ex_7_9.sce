clc
//Chapter7
//Example7.9
//Given
g01=round(10^(25/10))//low noise amplifier gain
Te1=4//low noise amplifier noise temp
g02=round(10^(1.7))//preamplifier gain
F2=round(10^0.6)//preamplifier noise figure
F3=round(10^1.2)//preamplifier noise figure
T=290// room temp
Te2=round((F2-1)*T)
Te3=round((F3-1)*T)
Te=Te1+(Te2/g01)+(Te3/(g01*g02))//Overall noise Temperature
mprintf('Equivalent noise temperature is %f K',Te)


