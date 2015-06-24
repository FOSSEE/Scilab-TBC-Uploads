//to evaluate the plate resistance and (b) use(7.10) to find the transconductance.
//Example 7.20 page no 219
clear
clc
dvp=218-152
dip=(14.7-8.1)*10^-3
rp=dvp/dip/1000     //kΩ
dvg=-2-(-6)
gm=dip/dvg*1000     //mS
printf("\n The value of rp=%0.3f kOhm",rp)
printf("\n The value of gm=%0.3f mS",gm)
