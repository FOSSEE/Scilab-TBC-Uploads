clc
//initialisation of variables
h1=1411.4 //kj/kg
s1=5.718 //kj/kgk
s2=5.718 //kj/kgk
h2=1755.7 //kj/kg
h4=352.3 //under 13.89 bar in kj/kg
h3=352.3 //under 13.89 bar in kj/kg 
//CALCULATIONS
m=(3.5164*25)/(h1-h4)
poc=m*(h2-h1)
cop=(h1-h4)/(h2-h1)
//RESULTS
printf('mass flow rate of refrigerant is %2fkg/s',m)
printf('\ncoefficient of performance is %2f',cop)
printf('\npower of compressor is %2fkw',poc)
