//Section-14,Example-8,Page no.-PC.151
//To calculate pH of 0.1 M CH_3COOH.
clc;
K_a=1.8*10^-5
C=0.1                          //Initial concentration (mol/L)
alpha=sqrt(K_a/C)              //Degree of dissociation 
[H_3O]=C*alpha
pH=-log10([H_3O])
disp(pH,'Required pH')
