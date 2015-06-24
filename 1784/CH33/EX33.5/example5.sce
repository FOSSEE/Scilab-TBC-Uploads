//chapter 33
//example5
clc
//given
i=200 //current in the strip in amp
B=1.5 //magnetic field in wb/m2
n=8.4*10^28 //in m-3
e=1.6*10^-19 //in coul
h=1.0*10^-3 //thickness of copper strip in metre
w=2*10^-2 //width of copper strip in meter
//calculation
Vxy=i*B/(n*e*h)
disp(Vxy,"Hall potential difference aross strip in volt is")
