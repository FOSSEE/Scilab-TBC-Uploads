//chapter9
//example9.19
//page165

// the waveform given in book is for understanding only. It is not required to solve the problem. Also it cannot be plotted in scilab unless Vm and Vdc are given.

R=25 // ohm
Rl=750 // ohm
Vm=25.7 // V

Vdc_dash=2*Vm/%pi
Vdc=Vdc_dash*Rl/(R+Rl)

printf("voltage across load is %.3f V plus a small ripple \n",Vdc)

// the accurate answer is 15.833 V but in book it is given as 15.9 V
