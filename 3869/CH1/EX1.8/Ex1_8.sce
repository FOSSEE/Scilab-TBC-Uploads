clear
//
//
//

//Variable declaration
n=10           
lamda=5460*10**-10         //wavelength(m)
d=0.1*10**-3               //distance between slits(m)
D=2                        //distance of screen from slits(m)

//Calculation
x10=n*lamda*D/d                 //distance from centre where 10th maximum is obtained(m)
tantheta1=x10/2                 //angular position of 10th maximum(radian)
tantheta1=tantheta1*180/%pi  //angular position of 10th maximum(degrees)
x1=lamda*D/(2*d)                //distance from centre where 1st maximum is obtained(m)
tantheta2=x1/2                  //angular position of 1st maximum(radian)
tantheta2=tantheta2*180/%pi  //angular position of 1st maximum(degrees)

//Result
printf("\n angular position of 10th maximum is %0.2f  degrees",tantheta1)
printf("\n angular position of 1st maximum is %0.3f  degrees",tantheta2)
