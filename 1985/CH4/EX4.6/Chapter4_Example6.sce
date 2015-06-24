clc
clear
//Input data
N=14438//Number of lines per inch
n=3//Order of diffraction
w=(4200*10^-10)//Wavelength of light used in m

//Calculations
x=(N/2.54)*100//Number of lines per m
dq=((n*x*10^-10)/sqrt(1-(x^2*n^2*w^2)))*(180/3.14)//Angular seperation in degrees. In textbook, it is given wrong as 0.14 degrees

//Output
printf('The angular seperation is %3.3f degrees',dq)
