clear
//
//
//

//Variable declaration
d=50*10**-6     //diameter(m)
NA=0.2      //numerical aperture(m)
lamda=1*10**-6    //wavelength(m)

//Calculation
N=4.9*(d*NA/lamda)**2     //total number of guided modes

//Result
printf("\n total number of guided modes is %0.3f",N)
