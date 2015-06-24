clc
//Initialization of variables
Q=2 
A=0.196 //cm^2
D=0.5 //ft
rho=0.9*1.94
mu=0.0008 //lb s/ft^2
hl=25
g=32.2 //ft/sec^2
L=200 //ft
r=2 //in
//calculations
V=Q/A
R=D*V*rho/mu
f=hl*D*2*g/(L*V^2)
umax=V*(1+1.33*sqrt(f))
T0=f*rho*V^2 /8
u2=umax - 5.75* sqrt(T0/rho) *log10(D*12/r)
//results
printf("Center line velocity = %.1f fps",umax)
printf("\n Shear stress = %.2f lb/ft^2",T0)
printf("\n Velcoity at 2 in from center line = %.2f fps",u2)
