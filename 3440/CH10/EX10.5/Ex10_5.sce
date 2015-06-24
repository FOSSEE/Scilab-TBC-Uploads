clc

T=300 //K
k=8.617*10^-5 //eV/K
q=1.6*10**-19 //C
I=10^9//A
Is=1*10^-9//A
V=0.35//V
IL=100*10^-3//A
Voc=k*T*log(IL/Is)
disp(Voc,"Voc in V is= ")
P=I*V*exp((V/(k*T))-1)*IL*V
disp(P,"P in watt is= ")        //textbook ans is not printed proper
