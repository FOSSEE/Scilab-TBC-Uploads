clear
//
//
//

//Variable declaration
lamda=5890*10**-8      //wavelength(cm)
dlamda=6*10**-8        //difference in wavelength(cm)
w=2                    //width(cm)
n=425                  //number of lines on grating
k=2                    //order

//Calculation
N=w*n                  //number of lines on grating 
N1=int((lamda/dlamda))         //number of lines required for resolution

N2=int((lamda/(k*dlamda)))                 //number of lines required for resolution


//Result
printf("\n number of lines required for resolution is %0.3f and number of lines on grating is %0.3f ",N1,N)
printf("\n hence lines will not be resolved")
printf("\n number of lines required for resolution is %0.3f and number of lines on grating is %0.3f ",N2,N)
printf("\n hence lines will appear resolved")
