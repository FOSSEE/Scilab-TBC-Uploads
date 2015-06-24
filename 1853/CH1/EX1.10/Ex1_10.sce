
//what is the resistance of each coil
V=200
I=25
P1=1500
R1=(V*V)/P1
R=V/I         //total resistance
R2=R*R1/(R1-R)
disp('R2='+string(R2)+'  ohms'  )
