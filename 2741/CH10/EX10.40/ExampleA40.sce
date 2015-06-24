clc
clear
//Page number 488
//Input data 
C1=1.84;//The RMS speed of molecules of hydrogen at NTP in km/s 
p1=2;//The molecular weight of hydrogen 
p2=32;//The molecular weight of oxygen 

//Calculations 
C2=C1*(p1/p2)^(1/2);//The RMS speed of oxygen at NTP in km/s 
C21=C2*1000;//The RMS speed of oxygen at NTP in m/s 

//Output
printf('The RMS speed of oxygen at NTP is  %3.2f km/s (or) %3.0f m/s ',C2,C21)


