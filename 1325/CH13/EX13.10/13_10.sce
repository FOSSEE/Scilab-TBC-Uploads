//Find the coefficient of insensitiveness at the extreme radii of rotaion
clc
//given
fs=3//lb
W=90//lb
w=15//lb
//fb=(fs/2)*(1+k)*(r/h) From equation 13.31
k=1//All the arms are of equal length
//fb=fs*(r/h)
//comparing the above result with the one obtained from example 8 , F=(W+w)*(r/h), we get coefficient of insensitiveness = k = (N1-N2)/N = fs/(W+w)
k=fs/(W+w)
K=k*100
printf("Coefficient of insensitiveness = %.3f",k)


