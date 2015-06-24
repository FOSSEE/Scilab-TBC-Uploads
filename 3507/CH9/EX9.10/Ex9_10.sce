//chapter9
//example9.10
//page152

n=10
Vp=230 // V

Vpm=2^0.5*Vp
Vsm=Vpm/n // since n=Vpm/Vsm=N1/N2

// Idc=Im/%pi and Vdc=Idc*Rl so
// Vdc=(Im/%pi)*Rl .Also Im*Rl=Vsm so
Vdc=Vsm/%pi

// in negative half cycle diode is reverse biased so maximum secondary voltage appears across diode.
PIV=Vsm

printf("output dc voltage = %.2f V \n",Vdc)
printf("peak inverse voltage = %.2f V \n",PIV)

// accurate answer for output dc voltage is 10.35 V not 10.36 V
