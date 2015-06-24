clear
clc

G1=50
H1=8

G2=100
H2=4
Gb=100

Ha=(H1*G1/Gb) + (H2*G2/Gb) 
mprintf("\n(a)Ha= %d MJ/MVA", Ha)

Hb=Ha*2
mprintf("\n(b)Hb= %d MJ/MVA", Hb)

He= (Ha*Hb)/(Ha+Hb)
mprintf("\n(c)He= %.3f MJ/MVA", He)

