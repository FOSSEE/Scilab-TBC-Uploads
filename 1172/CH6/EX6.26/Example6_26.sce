clc
//Given that 
c = 3e8 // speed of light in m/s
t = 8e-6 // mean life of meson 
l = 10 // distance of meson from earth surface
// sample problem 26 page No. 228
printf("\n \n\n # Problem 26 # \n")
printf("\n Standard formula used \n l = l_o* sqrt ( 1- (v/c)^2)")
v = l*1e3/ sqrt( t^2 +(l * 1e3 /c)^2) // calculation of relative speed of meson with respect to
printf ("\n Relative speed of meson with respect to earth  is %f c .",v/c )
