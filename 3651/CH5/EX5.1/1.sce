//Variable declaration
rho=5*10**16;   //resistivity(ohm m)
l=5*10**-2;    //thickness(m)
b=8*10**-2;    //length(m)
w=3*10**-2;    //width(m)

//Calculation
A=b*w;    //area(m**2)
Rv=rho*l/A;    
X=l+b;      //length(m)
Y=w;      //perpendicular(m)
Rs=Rv*X/Y;    
Ri=Rs*Rv/(Rs+Rv);       //insulation resistance(ohm)			

printf('insulation resistance is %0.3f *10**18 ohm',(Ri/10**18))
printf('answer varies due to rounding off errors')