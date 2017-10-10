clc
y1=0.6 //H2
y2=0.4 //CH4
p1=60 //in kPa
p2=40 //in kPa
T=300 //in kelvin
V=5 //in metre-cube
R=8.314*10^3
N1=(p1*10^3*V)/(R*T)
mprintf("NH2=%fkmol\n",N1)//ans vary due to roundoff error
N2=(p2*10^3*V)/(R*T)
mprintf("NCH4=%fkmol\n",N2)//ans vary due to roundoff error
y1=0.5
y2=0.5
mprintf("Total methane to be added=%fkmol\n",(N1-N2))//ans vary due to roundoff error
N2=N1
N=N1+N2
Pf=(N*R*T)/V
mprintf("Pf=%fkPa",Pf/1000)//ans vary due to roundoff error




