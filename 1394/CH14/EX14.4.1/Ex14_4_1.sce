

clc
//Initialization of variables
m = 0.018 
H = 450 // litres/hr
L = 37 // litres/hr
Ynplus1byY1 = 100 
//Calculations
E =m*H/L
nplus1 = log((Ynplus1byY1*((1/E)-1))+1)/log(1/E)
n = nplus1 -1
printf("The number of ideal stages are %.f",n)
N = 0.60//Murphree efficienct
E1 = (m*H/L) + (1/N) - 1
nplus1 = log((Ynplus1byY1*((1/E1)-1))+1)/log(1/E1)
n=nplus1-1
printf("\nThe number of stages required if Murphree efficiency is 60 percent is %.f",n)

