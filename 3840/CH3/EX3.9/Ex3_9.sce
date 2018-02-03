clear
//
//
//

//Variable declaration
a=0.26         //lattice spacing(nm)
lamda=0.065    //wavelength of X-rays(nm)
h=1
k=1
l=0
n=2

//Calculation
d=a/sqrt(h**2+k**2+l**2)           
sintheta=n*lamda/(2*d)
theta=asin(sintheta)*180/%pi            //glancing angle(degrees)
thetad=int(theta)                               //glancing angle(degrees)  
thetam=(theta-thetad)*60                        //glancing angle(minutes)
thetas=60*(thetam-int(thetam))                  //glancing angle(seconds)

//Result
printf("\n glancing angle is %0.3f degrees %0.3f minutes %0.3f seconds",thetad,thetam,thetas)
printf("\n answer in the book is wrong")
