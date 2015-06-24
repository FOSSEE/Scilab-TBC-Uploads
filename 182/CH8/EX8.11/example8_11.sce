// to determine the Q factor
// example 8-11 in page 221
clc;
//Data given
E=100D-3; R=[5 10]; XC=100; XL=XC; // supply resistance, capacitive reactance and inductive reactance respectively for the fig 8-17, all in ohm
//calculation
for n=1:2
    I=E/R(n);// current in ampere
    V=I*XC;// VL=VC=V and XC=XL, voltage in volts
    Q=V/E;// Q factor
    printf("for %d st coil,\n",n);
    printf("voltmeter indication=%d V\n",V);
    printf("Q=%d\n",Q);
end 
//result
//for 1 st coil,
//voltmeter indication=2 V
//Q=20
//for 2 st coil,
//voltmeter indication=1 V
//Q=10