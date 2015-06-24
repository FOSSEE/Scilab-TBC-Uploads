clear;
clc;

// A Textbook on HEAT TRANSFER by S P SUKHATME
// Chapter 3
// Thermal Radiation

// Example 3.2
// Page 115
printf("Example 3.2, Page 115 \n\n")

//Heat emission
Stefan_constt = 5.67*10^(-8);    //(W/m^2.K^4)
T = 1500;                          //temperature is in kelvins
eb = (Stefan_constt)*(T^(4));          //energy radiated by blackbody
//emission in 0.3um to 1um
e = 0.9;                       //emissivity
lamda1 = 1;                    //wavelength is in um
lamda2 = 0.3;                  //wavelength is in um
D0_1=0.5*(0.01972+0.00779);     //From table 3.1 page- 114
D0_2=0;                        //From table 3.1 page- 114
q = e*(D0_1-D0_2)*Stefan_constt*T^(4);//in W/m^2
printf("\n wavelength*temp = %d um K",1*1500);
printf("\n wavelength*temp at 0.3um = %d um K",0.3*1500);
printf("\n\n Required heat flux, q = %d W/m^2",q);


















