clc

W=180 //N
h=0.1 //m
L=1.16 //m
w=0.025 //m
d=0.075 //m
E=200 //GPa
k=180 //kN/m

I=w*d^3
disp(I)
//deltast=(W*L^3)/(48*E*I)       equation 1
deltast=(W*L^3*12)/(48*E*10^9*I)
disp(deltast,"deflection of a point in meter is= ")

//deltastmax=Mc/I                equation 2
deltastmax=(W*L*12*0.0375)/(4*I)
disp(deltastmax,"deflection of a point in Pa is= ")

//solution a:
a=1+sqrt(1+((2*h)/deltast))
disp(a,"imapct factor is= ")
deltamax=deltast*a
disp(deltamax,"in meter is =")
sigmamax=deltastmax*a
disp(sigmamax,"in Pa is= ")

//solution b:
deltast=deltast+(90/180000)
disp(deltast,"static deflection of the beam in meter is= ")
a=1+sqrt(1+((2*h)/deltast))
disp(a,"imapct factor is= ")
deltamax=deltast*a
disp(deltamax,"in meter is =")
sigmamax=deltastmax*a
disp(sigmamax,"in Pa is= ")






