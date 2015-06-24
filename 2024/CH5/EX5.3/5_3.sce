clc
clear
//Initialization of variables
Tr=1000 //R
Ta=3000 //R
Q=300 //Btu/min
p=5 //hp
J=778
//calculations
n1=1-Tr/Ta
nt=p*33000/(J*Q)
//results
printf("Theoretical efficiency = %.3f",nt)
printf("\n Claimed efficiency = %.3f",n1)
if n1>nt then
    printf("\n Inventor claims are true")
else 
    printf("\n Inventor claims are false")
end
