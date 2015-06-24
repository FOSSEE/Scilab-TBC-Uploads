//chapter-12,Example12_1,pg 371

E=10^6//electric field

l=10^-6//thickness of LCD

V=E*l//excitation potential

I=0.1*10^-6//current

rho=E/I//crystal resistivity

P=10*10^-6//power consumption

A=(P/(V*I))//area of electrodes

printf("excitation potential\n")

printf("V=%.2f V\n",V)

printf("crystal resistivity\n")

printf("rho=%.2f ohm-cm\n",rho)

printf("area of electrodes\n")

printf("A=%.2f cm^2",A)