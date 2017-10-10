//To find the  frequencies of the  free  torsional vibrations of the system
clc
//given
Ia=2.5//ton ft^2
Ib=7.5//ton ft^2
Ic=3//ton ft^2
g=32.2//ft/s^2
AB=9.5//ft
BC=25//ft
d=8.5//in
C=11.8*10^6//lb/in^2
k=Ic/Ia//la/lc=k
lc1=(25.6+(25.6^2-4*114.1)^(1/2))/2//from 1 and 2 , reducing using quadratic formula
lc2=(25.6-(25.6^2-4*114.1)^(1/2))/2//from 1 and 2 , reducing using quadratic formula
la1=lc1*k
la2=lc2*k
J=%pi*d^4/32
q=C*J/(lc1*12)//torsional stiffness
IC=Ic*2240*12^2/(g*12)//moment of inertia
nc=(1/(2*%pi))*(q/IC)^(1/2)//fundamental frequency of vibration
a1=nc*60
a=floor(a1)
n=16*(lc1/lc2)^(1/2)
b=n*60
printf("\nFundamental frequency of vibration = %.f per min\nTwo node frequency = %.f per min\n",a,b)
