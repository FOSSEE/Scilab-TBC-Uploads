//Ex-1.4
clc
q=1.6*10^(-19)
disp("q = "+string(q)+"coulomb") //charge on an electron
I=10
disp("I = "+string(I)+"Ampere") //initializing value of current
r=64.25
disp("radius,r = "+string(r)+" mils")//initializing value of radius of wire
function[metres]=mils2metres(mils)
metres=(mils*2.54)/(1000*100)
endfunction
[r1]=mils2metres(r)   
disp("r1 = "+string(r1)+" metre")
n=5*10^(28)
disp("n = "+string(n)+" electrons/m^3") // electrons concentration in copper
A=(%pi*r1^2) //formulae                            
disp("cross sectional area,A =(%pi*r1^2)= "+string(A)+" square metre")//calculation
v=(I)/(A*q*n)//formulae(I=A*q*n*v)
disp("drift velocity,v=(I)/(A*q*n)="+string(v)+" metre/second")//calculation

 
