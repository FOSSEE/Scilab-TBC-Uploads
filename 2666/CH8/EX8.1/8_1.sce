clc
//initialisation of variables
p1=53//psi
p2=54//psi
t=638//lb-ft
d=275//rpm
h1=50.26//sq in
h2=49.48//sq in
g=(10/12)//lb-ft
h=33000//lbf
//CALCULATIONS
I=(p1*h1+p2*h2)*g*d/(h)//ihp
P=2*%pi*d*t/h//bhp
M=P/I*100//percent
//RESULTS
printf('the mechanical efficiency=% f percent',M)
