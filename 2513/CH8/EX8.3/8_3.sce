clc
//initialisation of variables
d=750000//gpd per sq mile
v=0.22//ft
a=1.27//ft
q=0.30//ft
d1=365//days
p=0.25//ft
//CALCULATIONS
Q=q*a*d1//mg/sq mile
H=p*a*d1//mg/sq mile
//RESULTS
printf('the results obtained by normal analytical procedures and by Hazen s=% f mg/sq mile',H)
