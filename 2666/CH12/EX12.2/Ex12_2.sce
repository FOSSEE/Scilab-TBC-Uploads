
clc
//initialisation of variables
p=5//tons
w=200//ft
d=1000//ft
t1=520//F
h=480//F
q=42.4//tons
//CALCULATIONS
Wk=(p*w)*((t1-h)/h)//Btu per min
H=Wk/q//hp
Cp=d/Wk
//RESULTS
printf('the work per minute=% f',Cp)
