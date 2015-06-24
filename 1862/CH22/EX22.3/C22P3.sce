clear
clc
//to find ratio of rms speed of gas molecules containing 235-U and gas molecules containing 238-U
//to find relative abundance of gas molecules containing 235-U
//to find number of times gas molecule should be passed through barrier

//Given:
//abundance of 235-U
a1 = 0.7//in percentage
//abundance of 238-U
a2 = 99.3//in percentage
//final abundance of 235-U
a3 = 3//in percentage

//Solution:
//applying equations for root mean square speed
//molecular mass of 235-U
m_235 = 235+6*(19)//in u 
//molecular mass of 238-U
m_238 = 238+6*(19)//in u 
//ratio of rms speed of gas molecules containing 235-U and gas molecules containing 238-U
vrms_235_by_vrms_238 = sqrt(m_238/m_235)
//ratio of abundances
r = a1/a2
//relative abundance of gas molecules containing 235-U
ratio_1_pass = r*vrms_235_by_vrms_238 
//isotope ratio
i = (a3)/(100-(a3))
//number of times gas molecule should be passed through barrier
n = (log(i/r))/(log(vrms_235_by_vrms_238))

printf ("\n\n Molecular mass of 235-U m_235 = \n\n %3i u" ,m_235);
printf ("\n\n Molecular mass of 238-U m_238 = \n\n %3i u" ,m_238);
printf ("\n\n Ratio of rms speed of gas molecules containing 235-U and gas molecules containing 238-U vrms_235_by_vrms_238 = \n\n %.4f" ,vrms_235_by_vrms_238);
printf ("\n\n Ratio of abundances = \n\n %.5f" ,r);
printf ("\n\n Relative abundance of gas molecules containing 235-U ratio_1_pass = \n\n %.5f" ,ratio_1_pass);
printf ("\n\n Isotope ratio = \n\n %.5f" ,i);
//answer of n slightly changes than book.But answer by scilab answer is same as that of answer by calculator
printf ("\n\n Number of times gas molecule should be passed through barrier = \n\n %3i" ,n);
