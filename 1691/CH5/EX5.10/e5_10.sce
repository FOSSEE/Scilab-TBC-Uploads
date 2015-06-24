//example5.10
clc
disp("i) f_r=Resonant frequency")
f=1/((2*%pi)*sqrt(0.0004*2500*10^-12))
format(9)
disp(f,"= 1/(2*pi*sqrt(L*C))= ")
disp("ii) Tuned circuit dynamic resistance=R_p=L/CR")
r=(80*10^6)/2500
disp(r,"= (400 microH)/(2500pF)*(5ohm)= ")
disp("iii) Gain at resonance=A_v=(-g_m*R_L)=(-g_m*R_p)")
a=-6*32
disp(a," = 6mA/V * 32kohm = ")
disp("iv) The signal bandwidth =BW=(f_r)/Q")
q=(2*%pi*0.159*400)/5
format(6)
disp(q,"Q=(omega_r*L)/R= ")
b=159000/79.92
format(7)
disp(b,"BW(in Hz)=(f_r)/Q= ")
