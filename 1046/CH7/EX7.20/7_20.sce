//Example 7.20
//Calculate the spectral extinction coefficient.
//Given
T=300          //K, temprature
per=91         //percent, adsorbed radiation
lam=4.2        //micrometer, wavelength radiation
L=0.1          //m, path length
//calculation
// I2/I1=f
f=1-per/100    //fraction of incident radiation transmitted
//from  eq. 7.69
a=-log(f)/L
printf("the spectral extinction coefficient is %f m^-1",a)
