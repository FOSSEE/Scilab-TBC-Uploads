//chapter9
//example9.18
//page162

Vrms_A=0.5 // V
Vdc_A=10 // V
Vrms_B=1 // V
Vdc_B=25 // V

ripple_A=Vrms_A/Vdc_A
ripple_B=Vrms_B/Vdc_B

if ripple_A>ripple_B
    printf("power supply B is better \n")
elseif ripple_B>ripple_A
   printf("power supply A is better \n") 
else
    printf("both are equal \n")
end
