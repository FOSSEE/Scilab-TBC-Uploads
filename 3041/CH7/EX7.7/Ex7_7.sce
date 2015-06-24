//Variable declaration
R1=10.                   //series resistance(K ohms)
Rf=10**3.                //feedback resistance(k ohms)   
vo=-5.                   //output voltage(V)
Ri=1000                  //input resistance(k ohms)
Av=2.5*10**5             //gain

//Calculations
v1=-vo*(R1/Rf)           //input signal voltage(V)
vi=-vo/Av                //inverting voltage(V)  
i1=((v1*10**-3)-vi)/R1   //current through R1(uA)
ii=vi/Ri                 //inverting current(uA)
iF=-ii                   //forward current(uA)

//Results
printf ("value of vi is %.e mV",vi)
printf ("value of ii: %.e uA i1: %.e uA and iF is %.e uA",ii,i1,iF)
