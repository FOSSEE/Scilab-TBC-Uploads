//calculating proximate analysis
//Example 2.5
clc
clear
m1=1//mass of air dried coal in g
m2=0.985//mass of dry coal residue after heating for 1hr in g
m3=0.8//mass of residue after heating for 7min in g
m4=0.1//mass of last residue
Mm=m1-m2//mass of moisture in coal sample in g
Mv=m2-m3//mass of volatile matter in g
Ma=m4//mass of ash
%m=Mm*100//percentage moisture
%v=Mv*100//percentage of volatile matter
%a=Ma*100//percentage of ash
%c=100-(%m+%v+%a)//percentage of fixed carbon
printf('Thus (i)percentage of moisture = %2.1f percent\n',%m)
printf('(ii)percentage of volatile matter = %2.1f percent\n',%v)
printf('(iii)percentage of ash = %2.0f percent\n',%a)
printf('(iv)percentage of fixed carbon = %2.0f percent \n',%c)
