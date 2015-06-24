clc,clear
printf('Example 7.8\n\n')

m=0.322 //mass of deposit in grams
T=10*60 //time in seconds 
Z=1.118*10^-3 //Electrochemical equivalent

I=m/(T*Z)
ammeter_reading=0.60
ammeter_error= ammeter_reading - I
printf('Ammeter error = %.2f A',ammeter_error)
