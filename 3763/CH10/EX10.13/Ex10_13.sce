clear
//
//
//

//Variable declaration
V=2.405     //Vnumber
lamda=1.3    //wavelength(micro m)
NA=0.05      //numerical aperture(m)

//Calculation
amax=V*lamda/(2*%pi*NA)     //maximum value of core radius(micro m)

//Result
printf("\n maximum value of core radius is %0.2f  micro m",amax)
