V=115
Ia1=25
Ra=0.3

n1=1450
Ea1=V-Ia1*Ra
Ke=Ea1/n1

n2=1200
Ea2=Ke*n2
Ia2=3/4*Ia1
Raext=(V-Ea2)/Ia2-Ra
disp(Raext)
effia=Ea2/V*100     ///calculation mistake in the book at this point
disp(effia)
V=Ea2+Ia2*Ra
effia=Ea2/V*100
disp(effia)
