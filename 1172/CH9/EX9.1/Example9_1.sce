clc
//Given that
m_i = 15 // initial magnitude of supernova
m_f = 2 // final magnitude of supernova
// sample problem 1 page No. 332
printf("\n # Problem 1 # \n")

printf("Standard formula used \n\t M = m - 2.5log(L/L_0) ")
del_m = m_i - m_f // calculation of change in magnitude
brightness_ratio = 100^(del_m/5)  // calculation of increment in brightness ratio.
printf ("\n In two days novas brightness is increased by %d times nearly", ceil(brightness_ratio / 10000)*10000 )
