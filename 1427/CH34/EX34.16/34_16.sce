//ques-34.16
//Determining moles of HCl produced in given reaction
clc
w=480;//wavelength (in nm)
QY=10^6;//quantum yield
E=(6.023*10^23*6.626*10^-34*3*10^8)/(w*10^-9);
n=QY/E;
printf("The moles of HCl produced are %.3f.",n);
