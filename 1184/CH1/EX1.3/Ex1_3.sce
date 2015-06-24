//Example 1-3, Page No - 15

clear
clc

wavelength_feet=75
wavelength_meter= 75/3.28
c=300000000

frequency=c/wavelength_meter

printf('The signal frequncy is %.3f Megahertz',frequency/1000000)
