clc
//initialisation of variables
x1=3025 // according to 20 bar pressure and 300 degrees temp
x2=2262 //according to 20 bar pressure and 300 degrees temp
x3=2039 //according to 20 bar pressure and 300 degrees temp
x4=2896 //according to 20 bar pressure and 300 degrees temp
x5=2817 //according to 20 bar pressure and 300 degrees temp
x6=2728 //according to 20 bar pressure and 300 degrees temp
x7=2699 //according to 20 bar pressure and 300 degrees temp
x8=2592 //according to 20 bar pressure and 300 degrees temp
x9=2525 //according to 20 bar pressure and 300 degrees temp
x10=2430 //according to 20 bar pressure and 300 degrees temp
x11=2398 //according to 20 bar pressure and 300 degrees temp
x12=2262 //according to 20 bar pressure and 300 degrees temp
x13=2192 //according to 20 bar pressure and 300 degrees temp
//CALCULATIONS
ieff=(x1-x2)/(x1-x3)
feff=(x1-x4)/(x1-x5)
seff=(x4-x6)/(x4-x7)
teff=(x6-x8)/(x6-x9)
oeff=(x8-x10)/(x8-x11)
yeff=(x10-x12)/(x10-x13)
ced=(x1-x5)+(x4-x7)+(x6-x9)+(x8-x11)+(x10-x13)
rf=ced/(x1-x3)
//RESULTS
printf('cumulative enthaloy drop is %2f',ced)
printf('\nreheat factor is %2f',rf)
