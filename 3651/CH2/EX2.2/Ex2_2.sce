clc



//Variable declaration
a=3.61*10**-7
BC=sqrt(2)/2
AD=(sqrt(6))/2
//Result
printf('i.Surface area of the face ABCD =%0.3f*10**-14 mm**2\n",(a**2*10**14))
printf('ii.Surface area of plane (110) =%0.3f*10**13 atoms/mm**2\n",((2/(a*sqrt(2)*a)/10**13)))
printf('iii.Surface area of pane(111)=%0.3f*10**13 atoms/mm**2",(2/(BC*AD*a**2)*10**-13))
