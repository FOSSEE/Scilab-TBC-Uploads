clc
//initialisation of variables
m=17.378//mg
h=20//in/sq mile 
d=365//in
s=0.75//percent
a=100//sq miles
p=750000//gpd per sq mile
t=180//in
c=150//gpcd
n=64699 //gpd per sq mile
//CALCULATIONS
R=h*m//mg
A=R/d//mgd
S=s*a*t//billion gal
Q=a*p/c//gpd
P=a*n/c//people against
//RESULTS
printf('the surface water sheds and storage requirements=% f mg',R)
printf('the well watered sections of north america=% f billion gal',S)
printf('the average consumpition populations=% f gpd',Q)
printf('the presence of proper storage=% f people against',P)
