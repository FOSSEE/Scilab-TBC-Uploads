//data
R=2            //ohm/m
G=0.5*10^(-3)  //S/m
L=8*10^-9            //H/m
C=0.23*10^-12           //F/m
W=2*%pi*10^9           //Hz
Y=15.29*10^-4*exp(%i*1.2377)
Z=50.31*exp(%i*1.531)   
//equation and result
printf("\nresult:-")
Zo=sqrt(complex(R,W*L)/complex(G,W*C))
y=sqrt(Z*Y)
a=real(y)
B=imag(y)
disp(Zo,"Zo=sqrt(complex(R,W*L)/complex(G,W*C))=")

disp(y,"y=sqrt(Z*Y)=")
printf("\na=%.4fNp/m\nB=%.4frad/m",a,B)

