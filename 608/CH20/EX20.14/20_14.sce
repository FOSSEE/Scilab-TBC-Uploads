//Problem 20.14: A 5 kVA, 200 V/400 V, single-phase transformer has a secondary terminal voltage of 387.6 volts when loaded. Determine the regulation of the transformer.

//initializing the variables:
V1 = 200; // in Volts
V2 = 400; // in Volts
V2L = 387.6; // in Volts
S = 5000; // in VA

//calculation:
//regulation =(No-load secondary voltage - terminal voltage on load)*100/no-load secondary voltage  in %
reg = (V2 - V2L)*100/V2

printf("\n\n Result \n\n")
printf("\n the regulation of the transformer is %.1f percent ", reg)