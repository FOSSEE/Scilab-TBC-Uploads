//Introduction to Fiber Optics by A. Ghatak and K. Thyagarajan, Cambridge, New Delhi, 1999
//Example 11.6
//OS=Windows XP sp3
//Scilab version 5.5.2
clc;
clear;
//given Case(i)
lambdag=1.30e-6;//emission wavelength in m
//Bandgap energy in eV is given by : 
Eg=1.24/(lambdag/1e-6);//Division by 10^(-6) to convert lambdag into um
mprintf("\nCase 1: for lambda0 =1.30 um");
mprintf("\n Eg=%f eV",Eg);//The answers vary due to round off error
p=[0.12 -0.72 1.35-Eg];//Relation between Eg & y is given as 'Eg(y)=1.35-0.72y+0.12y^2 in eV'
y=roots(p);
mprintf("\n y=%f",y(2,1));//Roots are arranged in descending order & y cannot be greater than 1
//The answers vary due to round off error
//given Case(ii)
lambdag=1.55e-6;//emission wavelength in m
//Bandgap energy in eV is given by : 
Eg=1.24/(lambdag/1e-6);//Division by 10^(-6) to convert lambdag into um
mprintf("\nCase 2: for lambda0 =1.55 um");
mprintf("\n Eg=%f eV",Eg);//The answers vary due to round off error
p=[0.12 -0.72 1.35-Eg];//Relation between Eg & y is given as 'Eg(y)=1.35-0.72y+0.12y^2 in eV'
y=roots(p);
mprintf("\n y=%f",y(2,1));//Roots are arranged in descending order & y cannot be greater than 1
//The answers vary due to round off error
