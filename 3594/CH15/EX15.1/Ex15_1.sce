//to find the frequencies of the free longitudinal, transverse and torsional vibrations
clc
//given
W=.3*2240//lb
l=36//in
D=3//in
k=15//in
A=%pi*(D/2)^2
E=30*10^6//youngs modulus
C=12*10^6
g=32.2//ft/s^2
d=W*l/(A*E)
Fl=187.8/(d)^(1/2)
I=%pi*(d/2)^4
d1=W*(l^3)*64/(3*E*%pi*(3^4))
Ft=187.8/(d1)^(1/2)
j=%pi*3^4/32
q=C*j/l
Ftor=(1/(2*%pi))*(q*g*12/(W*k^2))^(1/2)
F1=Ftor*60
printf("\na) Frequency of Longitudinal vibrations = %.f per min\nb) Frequency of the transverse vibrations = %.f per min\nc) Frequency of the torsional vibration = %.f per min",Fl,Ft,F1)
