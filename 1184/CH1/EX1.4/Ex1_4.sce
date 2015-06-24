//Example 1-4, Page No - 15

clear
clc

wavelength_inches=8
wavelength_meter=  8/39.37
c=300000000

frequency= c/wavelength_meter

printf('\nThe signal freuency is %.3f Megahertz',frequency/1000000)
printf('\nThe signnalfrequency is %.3f Gegahertz',frequency/1000000000)
