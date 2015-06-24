
C1=100D-6  //capacitance of first capacitor which is to be charged
V=200  //voltage across C1
Q=C1*V
//Let Q1, Q2, Q3, Q4 be the charges on respective capacitors after connection
Q2=4000D-6
Q3=5000D-6
Q4=6000D-6
Q1=Q-(Q2+Q3+Q4)
C2=C1*(Q2/Q1)
C3=C1*(Q3/Q1)
C4=C1*(Q4/Q1)
mprintf("Three capacitors have capacitances %d microF, %d microF and %d microF\n", C2*10^6,C3*10^6,C4*10^6)
Vt=Q1/C1
mprintf("Voltage across the combination =%f V", Vt) 
