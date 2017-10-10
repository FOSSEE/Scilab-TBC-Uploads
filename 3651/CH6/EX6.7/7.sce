//Variable declaration
i=10**-2
A=0.01*0.001
RH=3.66*10**-4
Bz=0.5

//Calculations
Jx=i/A
Ey=RH*(Bz*Jx)
Vy=Ey*0.01

//Result
printf('Jx = %0.3f   ampere/m**2  \n',Jx)
printf('Ey = %0.3f     V/m   \n',(Ey))
printf('Vy = %0.3f     mV   \n',(Vy*10**3))