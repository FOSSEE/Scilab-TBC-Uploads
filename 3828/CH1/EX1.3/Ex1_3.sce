
//Chapter 1 : Wave Optics

clear;

//Variable declaration
lamda=5640*10**-8    //wavelength
d=0.01               //distance between slits
n=0                  //first minimum

//Calculations
theta=(n+(1/2))*(lamda/d)
theta=theta*180/%pi

//Result
mprintf("Angular position of first minima is= %0.2f",theta)

