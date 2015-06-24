clc
//initialisation of variables
p=1.01325 //pressure in bar
w1=0.01468
td=20 //temp in degrees
tw=40 //temp in degrees
//CALCULATIONS
ha=(1.005*td+w1*(2500+1.86*td))
w2=(ha-(1.005*tw))/(2500+1.86*tw)
//RESULTS
printf('humidity rate is %2fkg/kg of da',ha)
printf('\nw2 is %2fkg/kg of da',w2)
