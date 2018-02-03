clear
//
//
//

//Variable declaration
NA=0.39          //numerical aperture
n1_n2=0.05       //difference in refractive indices

//Calculation
n1n2=NA**2/n1_n2    
n2=(n1n2-n1_n2)/2      //Cladding refractive index
n1=n2+n1_n2            //Core refractive index

//Result
