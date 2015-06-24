//Variable declaration
T=300             //temperature(k)
Ig=100*10**-3     //current(mA)
Is=1*10**-9       //current(nA)
x=0.0259          //x=kT/e

//Calculations
Voc=x*log(Ig/Is+1)     //as Voc=kT/e*ln((Ig/Is)+1) where ln((Ig/Is)+1)=18.42 after solving 
Isc=Ig

//Result
printf ("for a solar cell Voc is %.3f V and Isc is %.f mA",Voc,Isc/1E-3)
