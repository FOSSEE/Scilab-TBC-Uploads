clc
clear
//Initialization of variables
W1=0.00206 //lbm/lbm dry air
W2=0.01090 //lbm/lbm dry air
t=60 //F
disp("From humidity charts,")
//calculations
dw=W1-W2
hs=144.4
hs2=66.8-32
w1=14.4 //Btu/lbm
ws1=20 //Btu/lbm
w2=76.3 //Btu/lbm
ws2=98.5 //Btu/lbm
dwh1=-(w1-ws1)/7000 *hs
H1=9.3+dwh1
dwh2=(w2-ws2)/7000 *hs2
H2=31.3+dwh2
dwc=dw*(t-32)
dq=H2-H1+dwc
//results
printf("Enthalpy change = %.2f Btu/lbm dry air",dq)
