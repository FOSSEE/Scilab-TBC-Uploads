clear
//
//Initialization
vcc=10                     //voltage
vbe=0.7                     //voltage, base-to-emitter junction
rb=910*10**3                //resistance in ohm
hfe=200
rc=2.7*10**3                 //resistance in ohm

//Calculation
ib=(vcc-vbe)/rb               //base current in ampere
ic=hfe*ib                     //collector in current in ampere
vo=vcc-(ic*rc)                //output voltage

//Result
printf("\n Output Current, I = %.2f mA",ic*10**3)

printf("\n Output Voltage, V = %.1f V",vo)

