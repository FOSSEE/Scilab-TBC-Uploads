clc,clear
printf('Example 7.9\n\n')

SA_plate= 2.54^2
thickness= 0.05 //thickness of deposit
density=9 //density of nickel
W=SA_plate*thickness*density //masss of deposit

CE_Ni=59; CE_Ag=108; //chemical equivalents
ECE_Ag=0.001118 //electrochemical equivalents
ECE_Ni = ECE_Ag*((CE_Ni/2)/CE_Ag) //valancy of Ni is 2

I=20
T=W/(ECE_Ni*I)
printf('Time taken for deposition = %.0f seconds\n',T)
printf('or <%d hours,%d minutes,%d seconds>',T/3600,60*((T/3600)- floor(T/3600) ) , 60*((60*((T/3600)- floor(T/3600) ) )-floor(60*((T/3600)- floor(T/3600) ) )))

