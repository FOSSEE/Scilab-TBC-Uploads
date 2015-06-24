clc
//initialisation of variables
h1=3157 //kj/kg
h2=2725 //kj/kg
h3=3299 //kj/kg
h4=2257.9 //kj/kg
h5=1940.3 //kj/kg
h6=152 //kj/kg
x4=0.872
x5=0.7405
v=0.1006*10^-2 //volume
p1=100 //pressure in bar
p2=0.06 //pressure in bar
//CALCULATIONS
wp=v*(p1-p2)*100
h7=h6+wp
wt1=h1-h5
wn1=wt1-wp
qs1=h1-h7
wr1=wn1/wt1
reff=wn1/qs1
//reheat cycle
wt2=(h1-h2)+(h3-h4)
wn2=wt2-wp
wr2=wn2/wt2
qs2=h1-h7+h3-h2
teff=wn2/qs2
pd=wn2/3600
pdi=(pd-0.3352)/0.3352
df=1-pdi
//RESULTS
printf('work ratio and rakine efficiency of rankine cycle is %2f and %2f',wr1,reff)
disp('dryness fraction of steam is 0.872')
printf('\nheat supplied is %2f',qs1)
printf('\npower developed is %2f',pd)
printf('\npower developed per kg of steam is %2f',pdi)

