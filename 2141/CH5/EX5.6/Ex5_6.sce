
clc
//initialisation of variables
v=200 //ft/sec
p=20 //lbf/in^2
ve=2000 //ft/sec
hi=1227.6 //ft/sec
T=778//F
t=32.17//in^2/ft^3
hg=1156.3//fe/sec
hf=960.1//ft
//CALCULATIONS
he=hi+((v)^2)/(2*t*T)-((ve)^2)/(2*t*T)//Btu/lbm
x=1-(7.9)/960.1//percent
X=-(he-hg)
X1=(1-X/hf)*100//percent
//RESULTS
printf('the final temperature if the steam is superheated in the final state=% f percent',X1)
