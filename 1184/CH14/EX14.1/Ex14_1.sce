//Example 14-1, page No - 544

clear
clc

f=310*10^6

len1 =(492*0.97)/f
len2 =(492/f)*0.8
len3 =(984/f)*0.73
z1 =120*log(35/2)
len4 =234/f
z2  = 73/2

printf('The length and radiation resistance of the dipole \n are %.2f feet and 73 ohm respectively',len1*10^6)
printf('\n\nThe length of the folded dipole are %.2f feet ',len2*10^6)
printf('\n\nThe length and radiation resistance of the bow tie antenna \n are %.1f feet and %.1f ohm respectively',len3*10^6,z1)
printf('\n\nThe length and radiation resistance of the groun plane antenna \n are %.3f feet and %.1f ohmrespectively',len4*10^6,z2)
