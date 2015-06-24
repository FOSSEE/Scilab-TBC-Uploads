//caption:Find output voltage for a binary input(a)1111(b)1100
//Ex6.1
clc
clear
close
N=4//bit of D/A convertor
Rlsb=16//resistance at LSB position(in kilo ohm)
Vref=5//reference voltage(in V)
Ro=1//feedback resistance(in kilo ohm)
R=Rlsb/(2^(N-1))
Va=-(Ro/R)*Vref*(2^0*1+2^-1*1+2^-2*1+2^-3*1)
disp(Va,'(a)output voltage(in V)=')
Vb=-(Ro/R)*Vref*(2^0*1+2^-1*1+2^-2*0+2^-3*0)
disp(Vb,'(b)output voltage(in V)=')