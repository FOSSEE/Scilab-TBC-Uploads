// properties of a graphite epoxy reinforce plastic
clc
x = 0.15
Ef = 250 // elastic modulus of fiber in GPa
Em = 80 // elastic modulus of resin in GPa
sigma_f = 2000 // strength of fiber in MPa
sigma_m = 100 // strength of resin in MPa
Fc = 1 // let
printf("\n Example 10.4")
Ec = x*Ef+(1-x)*Em
F_ratio = x*Ef/((1-x)*Em)
printf("\n Part A:")
printf("\n Elastic modulus of composite is %.1f GPa.",Ec)
Fm = Fc/(1+F_ratio)
Ff = Fc*(1-(1/(1+F_ratio)))
printf("\n Fraction of load supported by fibers is %d%%.",Ff*100)

