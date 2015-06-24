clc
//Example 6.3
//Calculate the fanning friction factor
R=10^5//dimentionless reynold's no.
ratio_ED=0.0002//dimentionless
f=0.001375*(1+(20000*ratio_ED+10^6/R)^(1/3))//dimentionless
printf("The fanning friction factor is %f",f);