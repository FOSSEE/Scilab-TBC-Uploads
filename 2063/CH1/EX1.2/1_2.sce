clc
clear
//Input data
r1=6;//Initial compression ratio
r2=7;//Final compression ratio
r=1.4;//Isentropic coefficient of air

//Calculations
nr1=(1-(1/r1)^(r-1))*100;//Otto cycle efficiency when compression ratio is 6 in percentage
nr2=(1-(1/r2)^(r-1))*100;//Otto cycle efficiency when compression ratio is 7 in percentage
n=nr2-nr1;//Increase in efficiency in percentage

//Output
printf('The increase in efficiency due to change in compression ratio from 6 to 7 is %3.1fpercent',n)
