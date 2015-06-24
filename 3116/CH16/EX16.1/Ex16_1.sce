

clc
// Given that

V_Cd=-0.403  //Half Cell Potential of Cd++|Cd in volt
V_Ni=-0.250  //Half Cell Potential of Ni++|Ni volt
C_Ni=10^-3
C_Cd=0.5
n=2  //Net electron exchange in Redox reaction
printf(" Example 16.1\n")
printf("\n Part A:")
dV=V_Ni-V_Cd // Potential difference in volts
printf("\n Standard Cell potential is : %.3f V\n",dV)
printf("\n Part B:")

V=-dV-(0.0592*log10(C_Ni/C_Cd)/n)
printf("\n Net EMF is : %.3f V\n",V)
printf("\n That is,")

if V<0 then 
    printf("\t Cd is oxidised & Ni is reduced \n")
else
    printf("\t Cd is reduced & Ni is oxidised\n")
end
