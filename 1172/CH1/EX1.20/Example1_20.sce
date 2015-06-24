clc
//Given
grating_element=6000// lines per centimeter
theta=30// angle of second order spectral line in degree 
n=2// order

//Sample Problem 20 Page No. 54
printf("\n # Problem 20 # \n")
printf(" \n Standard formula used \n   n*lambda= (a+b)*sin(theta) \n")

lambda=sin(theta*%pi/180)/(grating_element*n)
printf(" Wavelength is %e cm.\n",lambda)

