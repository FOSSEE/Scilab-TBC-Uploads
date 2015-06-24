clc
clear
//Input data
d=[6,6,2]//Dimensions of the rectangular solid in cm
F=0.3//Force applied in N
d1=5//Displacement relative to the lower surface in mm

//Calculations
s=(F/(d(1)*d(2)*10^-4))//Shear stress in N/m^2
q=(d1*10^-3)/(d(3)*10^-2)//Shear strain
rm=(s/q)//Rigidity modulus in N/m^2

//Output
printf('Shearing stress is %3.2f N/m^2 \n Shear strain is %3.2f \n Rigidity modulus is %3.2f N/m^2',s,q,rm)
