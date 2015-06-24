//Ex8_10
clc
fo=150
disp("fo= "+string(fo)+" Hz")//Central frequency of band pass filter
BW=15
disp("BW= "+string(BW)+" Hz")// Upper cut-off frequency or 3-dB bandwidth
Q=fo/BW // Quality factor
disp("Q= "+string(Q))
C=0.05*10^(-6) // Choosing value of capacitor same as in book
disp("C="+string(C)+"farad")
R=sqrt(2)/(2*%pi*fo*C)
disp("R=sqrt(2)/(2*%pi*fo*C)="+string(R)+ " ohm")  // resistance value for filter design
Am=5-(sqrt(2)/Q) // formulae
disp("Am=5-(sqrt(2)/Q)="+string(Am)) // Midband gain 
Abp=Am/(5-Am)
disp("Abp=Am/(5-Am)="+string(Abp)) // Central frequency  gain 
