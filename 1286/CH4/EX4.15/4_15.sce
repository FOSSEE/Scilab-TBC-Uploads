clc
//initialisation
t1=18//c
t2=19//c
t3=18.6//c
t4=23//c
t5=24//c
t6=23.7//c
svp1=15.46//mm
svp2=16.46//mm
svp4=21.02//mm
svp5=22.32//mm
//CALCULATIONS
svp3=svp1+((svp2-svp1)/(t2-t1))
svp6=svp4+((svp4-svp5)/(t4-t5))
rh=svp3*100/svp6
//results
printf(' relative humidity= % 1f ',rh)
