clc,clear
printf('Example 7.5\n\n')

D= 8.9 //density of nickel
A=200 //area of plate
thickness=0.2/10 //thicknes of coating
V=200*thickness //volume of material to be plated
W= V* D //weight of material to be deposited
Z= 0.0003043 //Electrochemical equivalent of nickel
Q = W / (Z*90/100)  //Q is quantity of electricity
printf('Quantity of electricity = %.1f A-hr\n',Q/3600)

current_density = 190*10^-4 //current density in A/ cm^2
current =  current_density *A
T=Q /current  //time taken
printf('Time taken = %f seconds\n',T)
printf('or <%d hours,%d minutes,%d seconds>',T/3600,60*((T/3600)- floor(T/3600) ) , 60*((60*((T/3600)- floor(T/3600) ) )-floor(60*((T/3600)- floor(T/3600) ) )))
