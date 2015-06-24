//example3.25
clc
disp("N1=400, N2=1000, A=60 cm^2, f=50 Hz, E1=520 V")
disp("a) E1=4.44*(phi_m)*f*N1   i.e.    520=4.44*(phi_m)*50*400")
p=520/(4.44*50*400)
format(9)
disp(p,"Therefore, (phi_m)[in Wb]= ")
b=(5.8558*10^-3)/(60*10^-4)
format(7)
disp(b,"Therefore, (B_m)[in Wb/m^2]=(phi_m)/A= ")
k=1000/400
disp(k,"b) K=N2/N1=1000/400= ")
disp("c) N2/N1=E2/E1   i.e.    1000/400=E2/520")
e=(1000*520)/400
disp(e,"Therefore, E2(in V)=")
e=520/400
disp(e,"d) E1/turns=E1/N1=520/400=")
e=1300/1000
disp(e,"E2/turns=E2/N2=1300/1000=")
