clear
//
//
//

//Variable declaration
N=10520                         //grating lines(lines/cm)
theta=90*%pi/180            //angle(radian)
lamda=5*10**-5                  //wavelength of spectral line(cm)

//Calculation
e=1/N
n=e*sin(theta)/lamda     //order

//Result
printf("\n int((n)) orders can be seen")
