//chapter11
//example11.1
//page202

Rin=20 //ohm
Rout=100d3 //ohm
Rc=1d3 //ohm
signal=500d-3 //V

Ie=signal/Rin // A
Ic=Ie
Vout=Ic*Rc
Av=Vout/signal

printf("voltage amplification = %.2f \n",Av)
