clc
//From figure 5.13(a)
//Applying KVL equation to the loop 
I=(20+10)/(3+6)
//As current will not flow in upper 3 ohm resistor so Thevenin voltage is equal to either of the two parallel branches
V1=20-I*3
printf("Thevenin voltage = %dV\n",V1)

// Left 3 ohm and 6 ohm resistor are in parallel and their equivalent is in series with 3 ohm
R1=3+(3*6)/(3+6)
printf("Thevenin resistance =%dohm\n",R1)

//Now to find Norton's equivalent
I1=V1/R1
printf("\n Norton current =%dA\n",I1)
disp("The value of resistance in Norton equivalent will not change but will come in parallel with current source")



