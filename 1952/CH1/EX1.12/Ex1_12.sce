// chapter 1 , Example1 12 , pg 25
V=13500//volume(in m^3)
T=1.2//reverberation time(in sec)
a=0.65//average absorption coefficient(in Sabine/m^2)
S=(0.165*V)/(a*T)//area of interior surface
printf("Area of interior surface\n")
printf("S=%.1f m^2",S)
