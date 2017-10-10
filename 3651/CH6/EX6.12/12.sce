
//Variable declaration
Vh=37*10**-6
thick=1*10**-3
width=5
Iy=20*10**-3
Bz=0.5

//Calculations
Rh=(Vh*width*thick)/(width*Iy*Bz)

//Result
printf('Rh = %0.3f     *10**-6 C**-1 m**3   \n',(Rh*10**6))