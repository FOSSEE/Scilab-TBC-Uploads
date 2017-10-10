//Optical Fiber communication by A selvarajan
//example 2.10
//OS=Windows XP sp3
//Scilab version 5.5.1
clc;
clear all;
//given 
//case-1
n1=1.49;//refractive index of core
n2=1.46//refractive index of cladding
c=3*10^5;//speed of light in Km/s
t1=n1/c;//time delay for one traveling along axis in s/Km
t2=(n1^2/n2)/c//time delay for one traveling along path that is totally reflecting at the first interface in s/km
mprintf("time delay for traveling along axis =%f us/Km",t1*1e6)//multiplication by 1e6 to convert the unit from s/Km to us/Km
mprintf("\ntime delay for  traveling along path that is totally reflecting at the first interface =%fus/km",t2*1e6)//multiplication by 1e6 to convert the unit from s/Km to us/Km
//case-2
n1=1.47;//refractive index of core
n2=1.46//refractive index of cladding
c=3*10^5;//speed of light in Km/s
t1=n1/c;//time delay for one traveling along axis in
t2=(n1^2/n2)/c//time delay for one traveling along path that is totally reflecting at the first interface
mprintf("\ntime delay for traveling along axis =%f us/Km",t1*1e6)//multiplication by 1e6 to convert the unit from s/Km to us/Km
mprintf("\ntime delay for traveling along path that is totally reflecting at the first interface =%fus/km",t2*1e6)//multiplication by 1e6 to convert the unit from s/Km to us/Km

//The answer provided in the textbook is wrong it has got wrong unit
