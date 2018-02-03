clear
//
//
//

//Variable declaration
lamda=5890*10**-5      //wavelength(cm)
dlamda=6*10**-5        //difference in wavelength(cm)
k=2                    //order
w=2.5                  //width(cm)

//Calculation
N=lamda/(k*dlamda*w)   //minimum number of lines per cm

//Result
printf("\n minimum number of lines per cm is %0.2f  ",N)
printf("\n answer given in the book varies due to rounding off errors")
