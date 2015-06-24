clc
disp("Example 5.12")
printf("\n")
disp("Calculate overall voltage gain ,gain of 2nd & 3rd stage,input voltage of 2nd stage & all in db of three stage amplifier")
printf("Given\n")
//input voltage 
Vi=0.05
//output voltage
Vo=150
//voltage gain of 1st stage
Av1=20
//input to 3rd stage
V2=15
//overall voltage gain 
Av=Vo/Vi
//input to 2nd stage
V1=Av1*Vi
//voltage gain of 2nd stage
Av2=V2/V1
//voltage gain of 3rd stage
Av3=Vo/V2
//all stages gain in db
Av1db=20*log10(Av1)
Av2db=20*log10(Av2)
Av3db=20*log10(Av3)
//overall gain in db
Av=Av1db+Av2db+Av3db
printf("overall voltage gain \n%f\n",Av)
printf("voltage gain of 2nd & 3rd stages \n%f\n%f\n",Av2,Av3)
printf("input voltage of 2nd stage \n%f volt\n",V1)
printf("Decibal voltage gain of 1st, 2nd, 3rd stage \n%fdB\n%fdB\n%fdB\n",Av1db,Av2db,Av3db)
printf("Overall gain in db \n%f dB\n",Av)
