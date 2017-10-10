//Chapter 1
//Example 1.8
//Page 27

clear;
clc;

T_min=20;
T_max=250;
T=55;
A1=0.5;
A2=0.75;
A3=0.8;


//Calculation of Errors for each case
printf("error for accuracy of 0.5 percent of full scale value is = %.2f degree celcius \n",(A1/100)*T_max);
printf("Thus the actual temperature is in range of = %.2f degree celcius to =%.2f degree celcius \n",(T-(A1/100)*T_max),((A1/100)*T_max)+T);
printf("error for accuracy of 0.75 percent of span is = %.3f degree celcius \n",(A2/100)*(T_max-T_min));
printf("Thus the actual temperature is in range of = %.3f degree celcius to =%.3f degree celcius \n",(T-((A2/100)*(T_max-T_min))),(A2/100)*(T_max-T_min)+T);
printf("error for accuracy of 0.8 percent of reading is = %.2f degree celcius \n",(A3/100)*(T));
printf("Thus the actual temperature is in range of = %.2f degree celcius to = %.2f degree celcius \n",T-((A3/100)*(T)),((A3/100)*(T))+T);





