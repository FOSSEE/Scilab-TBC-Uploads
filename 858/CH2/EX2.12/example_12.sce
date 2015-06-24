clc
clear 
printf("example 2.12 page number 74\n\n")

//to find the vapor pressure of water

w_water=540   //in gm
w_glucose=36  //in gm
m_water=18;      //molar mass of water
m_glucose=180;   //molar mass of glucose

x=(w_water/m_water)/(w_water/m_water+w_glucose/m_glucose);
p=8.2*x;
depression=8.2-p;

printf("depression in vapor pressure = %f Pa",depression*1000)
