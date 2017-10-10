clear
//
//
//

//Variable declaration
a=3.61*10**-7        //lattice constant(mm)

//Calculation
A100=a**2     //surface area(mm**2)
n=1+(4*(1/4))
N1=n/A100      //number of atoms in (100)(per mm**2)
A110=sqrt(2)*a**2      //surface area(mm**2)
N2=n/A110      //number of atoms in (110)(per mm**2)
A111=sqrt(3)*a**2/2    //surface area(mm**2)
N3=n/A111     //number of atoms in (110)(per mm**2)

//Result
printf("\n number of atoms in (100) is %0.3f  *10**13 atoms/mm**2",N1/10**13)
printf("\n number of atoms in (110) is %0.3f  *10**13 atoms/mm**2",N2/10**13)
printf("\n number of atoms in (111) is %0.3f  *10**13 atoms/mm**2",N3/10**13)
printf("\n answer varies due to rounding off errors")
