disp('chapter 11 ex11.4')
disp('given')
disp('design a first order active high-pass filter to have cutoff frequency 5kHz')
disp('using LM108 op-amp which has extremely low input bias current,should be treated as BIFET op-amp thereforo C1=1000pF')
C1=1000*10^(-12)
fc=5000
disp('R1=1/(2*%pi*fc*C1)')
R1=1/(2*%pi*fc*C1)
disp('ohms',R1)
disp('use 31.6kohm+or-1% standard value')
disp('R1=R2=31.6kohm')
disp('from LM108 gain/frequencyresponse .the op-amp unity gain frequency is fu=1MHz')
Av=1
fu=1*10^(6)
disp('f2=fu/Av')
f2=fu/Av
disp('Hz',f2)