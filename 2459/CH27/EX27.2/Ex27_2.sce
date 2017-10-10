//chapter27
//example27.2
//page575

R1=4 // ohm
R2=4 // ohm
R3=4 // ohm

// for h11 and h21, imagine that output terminals are shorted hence it is clear that input impedence is equal to R1+R2*R3/(R2+R3)
    // this is h11 by definition so
    h11=R1+R2*R3/(R2+R3)

    // now current will divide equally at junction of 4 ohm resistors so output_current/input_current = -0.5
    // but this ratio is h21 by definition. Thus
    h21=-0.5

// for h12 and h22 imagine a voltage source on output terminals
    // this voltage will be divided by a factor 2
    // hence input_voltage/output_voltage = 0.5
    // but this ratio is h12 by definition. Thus
    h12=0.5

    // here output impedence looking into output terminals with input terminals open is 8 ohm.
    // its reciprocal is h22 by definition. Thus
    h22=1/8
    
printf("h11 = %.3f ohm \n",h11)
printf("h21 = %.3f \n",h21)
printf("h12 = %.3f \n",h12)
printf("h22 = %.3f ohm \n",h22)
