//Chapter-1,Example1_15_4,pg 1-70

V=50*10^3                               //operating voltage of x-ray

M=74.6                                  //molecular weight

p=1.99*10^3                             //density

n=4                                     //no of atoms per unit cell(for FCC structure)

h=6.63*10^-34                           //plank's constant

c=3*10^8                                //velocity 

e=1.6*10^-19                            //charge on electron

N=6.023*10^26                           //Avogadro's number

//step 1:clculating shortest wavelength

l=h*c/(e*V)

printf("       1)shortest wavelength=")

disp(l)

printf("m")

//step:2 calculating distance(d)

//now a^3*p=n*M/N therefore,

a=(n*M/(N*p))^(1/3)

//since KCl is ionic crystal herefore,

d=a/2

//step 3: calculaing glancing angle

//using Bragg's law

//n*l=2*d*sin(t)

//assume sin(t)=a, wavelength is minimum i.e l and n=1

n=1

a=n*l/(2*d)

t=asind(a)                              //taking sin inverese in degree

printf("      2) glancing angle=")

disp(t)

printf("degree")
