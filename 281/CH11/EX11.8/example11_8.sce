disp('chapter 11 ex11.8')
disp('given')
disp('the circuit designed in ex11.7 estimate the highest frequency')
disp('from 741 data sheet ,the op-amp unity gain cutoff frequency is fu=800kHz')
disp('f=fu/Av')
fu=800000
Av=1
f=fu/Av
disp('Hz',f)
disp('the circuit upper cutoff frequency is,fc=0.65*f')
fc=0.65*f
disp('Hz',fc)