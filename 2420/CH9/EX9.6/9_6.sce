clc
clear
//Initialization of variables
hw=3/12 //ft
gam1=62.4 //lb/ft^3
gam2=0.07 //lb/ft^3
g=32.2 //ft/s^2
//calculations
p=hw*gam1
hg=p/gam2
V=sqrt(2*g*hg)
//results
printf("velocity of gas = %.1f fps",V)
