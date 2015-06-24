clc
disp("Example 4.79")
printf("\n")
disp("calculate transconductance of JFET")
printf("Given\n")
//voltage gain 
Av=20
//drain resistance
Rd=3.3*10^3
//transconductance
gm=Av/Rd
printf("Transconductance of JFET \n%f (1/ohm)\n",gm)
