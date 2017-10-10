clear
//Given
Cab=10                         //micro F
C1=8.0                           //micro F
C2=8.0
C3=8
C4=8
C5=12
V=400

//Calculation
Cbc=((C1*C2)/(C1+C2))+C3+C4
Cac=Cab*Cbc/(Cab+Cbc)
Ccd=C1+C5
Cad=Cac*Ccd/(Cac+Ccd)
q=Cad*V
Vcd=q/Ccd
q1=C5*Vcd

//Result
printf("\n (i) The equivalent capacitance between A and D is  %0.3f  micro f", Cad)
printf("\n (ii) The charge on 12 micro F capacitor is  %0.3f  mC",q1*10**-3)
