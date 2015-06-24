clc
clear
//Initialization of variables
p=144*29*0.491 //psf
R=53.3
T=70+460 //R
gamw=62.4 //lb/ft^3
gama=0.073 //lb/ft^3
hw=3/12 //ft
hw2=3.5/12 //ft
hv=32.2 //ft/s^2
ms=9 //lb
g=32.2 //ft/s^2
//calculations
rhoa=p/(R*T)
hs=hw*gamw/gama
ht=hw2*gamw/gama
hv=ht-hs
V=sqrt(2*g*hv)
msv=ms*V*60
mm=msv*gama
airhp= ht*mm/33000
//results
printf("Velocity head = %d ft of air",hv)
printf("\n velocity of air in the duct = %.1f fps",V)
printf("\n volume = %d cu ft per min",msv)
printf("\n Mass flow rate = %d lb/min",mm)
printf("\n Air hp = %.1f hp",airhp)
disp("The answers in the textbook are a bit different due to rounding off error in the textbook. Please use a calculator")
