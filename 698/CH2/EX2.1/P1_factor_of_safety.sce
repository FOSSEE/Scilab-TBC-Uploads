clc
//Example 2.1
//Factor of safety

//------------------------------------------------------------------------------
//Given Data:
//Dimensions
b=0.04//m
h=0.05//m
// the value of h is given 20mm in the problem statement but taken 50mm while solving, therefore we will take 50mm as the value of h
//Force
P=200000//N

//------------------------------------------------------------------------------
//Stress induced
S=P/(b*h)
S=S*(10^-6)//To convert units into Mpa

//Yield strength
Sy=500//Mpa

//Factor of safety
fos=Sy/S

//------------------------------------------------------------------------------
//Printing the result file to .txt
res1=mopen(TMPDIR+'1_factor_of_safety.txt','wt')
mfprintf(res1,"The stress in the bar is given by:\n")
mfprintf(res1,"\n\tSx=P/A\n")
mfprintf(res1,"\n\tFactor of safety=(Yield Strength)/(Induced Strength)\n\n")
mfprintf(res1,"The factor of safety is %d",fos)
mclose(res1)
editor(TMPDIR+'1_factor_of_safety.txt')
//------------------------------------------------------------------------------
//-----------------------------End of program-----------------------------------