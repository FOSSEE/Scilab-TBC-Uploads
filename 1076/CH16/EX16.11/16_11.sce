clear
clc

L=1200
L1=900
L2=600

r=1.5

x=(L1*L + L*L*r/2)/(L1 + L2 + (r*2*L/2))
y=L-x
mprintf("\nCurrent in CB= %.0f a A", x)
mprintf("\nCurrent in CA= %.0f a A", y)
