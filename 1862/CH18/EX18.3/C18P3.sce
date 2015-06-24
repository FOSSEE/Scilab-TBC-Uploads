clear
clc
//to find amplitude of combined wave
//to find value by which phase difference be changed

// GIVEN:
//amplitude of each wave
ym = 9.7//in mm
//phase difference
fi = 110//in degree

// SOLUTION
//using equations of interference of waves
//amplitude of combined wave
y = 2*ym*(cosd(fi/2))//in mm
//value by which phase difference be changed
delta_fi = 2*(acosd(1/2))//in degree
delta_fi1 = -(delta_fi)//in degree

printf ("\n\n Amplitude of combined wave y = \n\n %.1f mm",y)
printf ("\n\n Value by which phase difference be changed delta_fi = \n\n %3i degree or %3i degree ",delta_fi,delta_fi1)

