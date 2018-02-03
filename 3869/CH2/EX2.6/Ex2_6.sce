clear
//
//
//

//Variable declaration
n=4000                //number of lines/cm
lamda=5000*10**-8     //wavelength(cm)
k=3                   //order

//Calculation
e=1/n                
sintheta=k*lamda/e  
costheta=sqrt(1-sintheta**2)
dthetabydlamda=k*n/costheta         //dispersive power of grating

//Result
printf("\n dispersive power of grating is %0.3f  ",dthetabydlamda)
