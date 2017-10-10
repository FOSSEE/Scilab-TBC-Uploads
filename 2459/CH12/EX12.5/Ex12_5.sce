//chapter12
//example12.5
//page242

Vcc=12 // V
gain_beta=100
Vbe=0.3 // V
Ic=1 // mA

// since gain_beta=Ic/Ib
Ib=Ic/gain_beta

// since Vcc=Ib*Rb+Vbe we get
Rb=(Vcc-Vbe)/Ib

gain_beta2=50

// since Vcc=Ib*Rb+Vbe we get
Ib2=(Vcc-Vbe)/Rb
Ic2=Ib2*gain_beta2

printf("for beta = 100, base resistor = %.3f kilo ohm \n",Rb)
printf("for beta = 50, zero signal collector current for same Rb is = %.3f mA \n",Ic2)
