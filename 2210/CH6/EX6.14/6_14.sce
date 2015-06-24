//Chapter 6, Problem 14
clc
//transistor parameter
yi=(16+%i*11.78)*10^-3              //in complex form
y0=(1.55+%i*5.97)*10^-3             //in complex form
gi=16e-3                            //input conductance
go=0.19e-3                          //output conductance
yr_mag=1.55e-3                      //magnitude of yr parameter
yr_ang=258                          //angle of yr parameter
yf_mag=45e-3                        //magnitude of yf parameter
yf_ang=285                           //angle of yf parameter

//calculation of stabilty factor
a=yr_mag*yf_mag
b=(2*gi*go)+(yr_mag*yf_mag)
C=a/b

printf("Linvill stability factor C = %.2f ",C)
