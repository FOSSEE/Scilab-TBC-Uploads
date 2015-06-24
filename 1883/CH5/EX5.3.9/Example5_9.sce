//Chapter-5,Example5_3_9,pg 5-10

V=3000                                          //Potential difference 

wavelength=12.27/sqrt(V)                        //The de Broglie wavelength of an electron accelerated through a potential diff. of 'V'

printf("\nThe de Broglie wavelength of an electron accelerated through a potential diff. of V is  %.3f A.\n",wavelength)

h=6.63*10^-34                                   //Plancks constant

p=h/(wavelength*10^-10)                                   //as the de Broglie wavelength of an electron is (wavelength=h/p)

printf("\nThe momentum of an electron is\n")

disp(p)

printf("kg-meter/sec\n")

wave_no=1/(wavelength*10^-10)                                      //wave number 

printf("\nThe wave number = %.f/m\n",wave_no)

d=2.04                                          //distance between planes

n=1                                             //For first ordet reflection

angle=asind(n*wavelength/(2*d))                   //By Bragg's law '2dsin(angle)=n*wavelength' 

printf("\nThe Bragg angle = %.3f Degree\n",angle)
