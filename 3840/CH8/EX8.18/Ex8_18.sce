clear
//
//
//

//Variable declaration
Vrms=200      //voltage(V)
RL=1000       //load resistance(ohm)

//Calculation
Im=Vrms*sqrt(2)/RL      //peak current(A)
Idc=2*Im/%pi              //average DC current(A)
Vdc=int(Idc*RL)                   //dc voltage(V)
x=(Vrms/Vdc)**2
gama=sqrt(x-1)*Vdc      //ripple factor(V)

//Result
