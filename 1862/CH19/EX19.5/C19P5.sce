clear
clc
//to find fundamental frequncy of string
//to find fundamental frequncy of string for first overtone
//to find original frequency

// GIVEN:
//refer figure 19-8 from page no. 436
//frequeny
f = 440//in Hz
//frequency of tuning fork
f2 = 3//in Hz
//frequency of tuning fork for first overtone
f3 = 880//in Hz

// SOLUTION
//using equation of sound wave
//fundamental frequncy of string
f1 = f+f2//in Hz
f_1 = f-f2//in Hz
//frequncy of string for first overtone frequency
f4 = f3+(2*f2)//in Hz
f_4 = f3-(2*f2)//in Hz
//original frequency
f5 = f1//in Hz

printf ("\n\n Fundamental frequncy of string \n\n f1 = %3i Hz or %3i Hz ",f1,f_1)
printf ("\n\n Frequncy of string for first overtone frequency \n\n %3i Hz or %3i Hz ",f4,f_4)
printf ("\n\n Original frequency = \n\n %3i Hz",f5)
