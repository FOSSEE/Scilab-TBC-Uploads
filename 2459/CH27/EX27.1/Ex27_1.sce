//chapter27
//example27.1
//page574

R1=10 // ohm
R2=5 // ohm

// for h11 and h21, imagine that output terminals are shorted hence it is clear that input impedence is equal to R1.
    // this is h11 by definition so
    h11=R1

    // now current will flow of same magnitude but in opposite directions through input and output terminals so output_current/input_current = -1
    // but this ratio is h21 by definition. Thus
    h21=-1

// for h12 and h22 imagine a voltage source on output terminals
    // this voltage will be avilable on input terminals also since current through 10 ohm resistor = 0.
    // hence input_voltage/output_voltage = 1
    // but this ratio is h12 by definition. Thus
    h12=1

    // here output impedence looking into output terminals with input terminals open is 5 ohm.
    // its reciprocal is h22 by definition. Thus
    h22=1/5
    
printf("h11 = %.3f ohm \n",h11)
printf("h21 = %.3f \n",h21)
printf("h12 = %.3f \n",h12)
printf("h22 = %.3f ohm \n",h22)
