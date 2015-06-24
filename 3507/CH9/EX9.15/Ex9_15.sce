//chapter9
//example9.15
//page158

n=4
Rl=200 // ohm
fin=50 // Hz
Vp=230 // V rms

Vs=Vp/n // V rms
Vsm=Vs*2^0.5 // maximum voltage across secondary 

Idc=2*Vsm/(%pi*Rl)
Vdc=Idc*Rl
PIV=Vsm

// in full wave rectifier, output frequency is twice input frequency since there are two ouput pulses for each cycle of input
fout=2*fin

printf("dc output voltage = %.3f V \n",Vdc)
printf("peak inverse voltage = %.3f V \n",PIV)
printf("output frequency = %.3f Hz",fout)

// the accurate answer for dc output voltage is 51.768 V but in book it is given as 52 V
