//Chapter 6, Problem 8
clc
A=800e-4                    //area of paper
C=4425e-12                  //capacitance in pF
e0=8.85e-12                 //permitivity of free space
er=2.5                      //dielectric
d=(e0*er*A)/C               //thickness of paper
printf("The thickness of the paper = %.1f mm",d*10^3)
