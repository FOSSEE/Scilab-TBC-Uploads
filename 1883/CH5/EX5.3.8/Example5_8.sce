//Chapter-5,Example5_3_8,pg 5-9

h=6.63*10^-34                                //Plancks constant

m=9.1*10^-31                                 //mass of an electron

e=1.6*10^-19                                 //charge on electron

wavelength=10^-14                                   //The de Broglie wavelength of an electron

p=h/wavelength                                     //as the de Broglie wavelength of an electron is (lam=h/p)

printf("\nThe momentum of an electron is\n")

disp(p)

printf("kg-meter/sec\n")

E=p^2/(2*m*e)*10^-6                                //energy corresponds to momentum

printf("\nenergy of an electron is   E = %.2f MeV\n",E)
