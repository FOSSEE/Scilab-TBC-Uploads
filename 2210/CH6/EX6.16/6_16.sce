//Chapter 6, Problem 16
clc
//transistor Y parameter
yi=(16+%i*11.78)*10^-3                  //in complex form
yf_mag=45e-3
yf_ang=285
yr_mag=1.55e-3
yr_ang=258
yo=0.19+%i*5.97                      //in complex form
gi=16e-3                            //input conductance in  siemens
go=0.19e-3                          //output conductance in  siemens

//calculating maximum available gain
MAG=yf_mag^2/(4*gi*go)
MAG_db=10*log10(MAG)
printf("Maximum available gain = %.2f \n\n",MAG)
printf("Maximum available gain in dB = %.2f dB",MAG_db)
