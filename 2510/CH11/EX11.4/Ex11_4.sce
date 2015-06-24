//Variable declaration:
l = 0.25                            //Wavelength (mu.m)
//From equation 11.4:
lT = 2884                           //Product of wavelength and absolute temperature (mu.m.°R)

//Calculation:
T = lT/l                            //Sun's temperature (°R)
T1 = round(T * 10**-2)/10**-2
T = T - 460
T460 = round(T * 10**-3)/10**-3

//Result:
printf("The Sun s temperature is : %f  °R.",T1)
printf("The Sun s temperature in fahrenheit scale is : %f °F.",T460)
