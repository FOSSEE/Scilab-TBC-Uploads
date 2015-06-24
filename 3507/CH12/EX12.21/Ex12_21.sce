//chapter12
//example12.21
//page257

V_CC=10 // V
R1=12 // kilo ohm
R2=2.7 // kilo ohm
V_BE=0.7 // V
R_E=180d-3 // kilo ohm
R_C=620d-3 // kilo ohm

V2=V_CC*R2/(R1+R2)
I_E=(V2-V_BE)/R_E
I_C=I_E
V_CE=V_CC-I_C*(R_C+R_E)

printf("the operating point is %.3f V and %.3f mA \n",V_CE,I_C)
if V_CE<V_CC/2+0.1 | V_CE>V_CC/2-0.1  // check if V_CE is nearly half of V_CC
    printf("circuit is mid-point biased \n")
else 
    printf("circuit is not mid-point biased. \n")
end

// the accurate answer for collector current is 6.315 mA but in book it is given as 6.33 mA
