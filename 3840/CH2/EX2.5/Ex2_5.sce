clear
//
//
//

//Variable declaration
a=3.5        //lattice constant(angstrom)
n=10**7      //1mm in angstrom

//Calculation
N=n**2/a**2  //number of atoms per sq mm
        
//Result
printf("\n number of atoms per sq mm is %0.2f  *10**12",N/10**12)
