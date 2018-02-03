clear
//
//
//

//Variable declaration
theta=10*%pi/180           //angle(radian)
dtheta=3*%pi/(60*60*180)           //difference of angle(radian)
dlamda=5*10**-9                //wavelength(cm)
k=2

//Calculation
lamda=sin(theta)*dlamda/(cos(theta)*dtheta)       
lamdanew=lamda+dlamda             //wavelength of lines(cm)
N=lamda/(dlamda*k)
Ne=N*k*lamda/sin(theta)      //minimum grating width required(cm)

//Result
printf("\n wavelength of lines is %0.1f  *10**-8 cm",lamda*10**8)
printf("\n answer given in the book varies due to rounding off errors")
printf("\n minimum grating width required is %0.1f  cm",Ne)
