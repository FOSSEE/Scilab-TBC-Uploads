//example2.24
clc
disp("P=4, Lap hence A=P, N=1150 rpm, E_g=265 V")
n=56*6
disp(n,"Total turns=No. of coils*turns/coil=")
z=2*336
disp(z,"Therefore,    Z=2*total turns=")
disp("E_g=(psi*P*N*Z)/(60*A)  i.e  265=(psi*4*1150*672)/(60*A)")
s=(265*60*4)/(4*1150*672)
disp(s,"Therefore,  psi(in Wb)=")
disp("Number of commutator bars=Number of coils=56")
