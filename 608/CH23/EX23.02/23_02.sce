//Problem 23.02: Given Z1 = 3 + i4, Z2 = 2 - i5 determine in cartesian form correct to three decimal places:
//(a)1/Z1, (b)1/Z2,  (c)1/Z1 + 1/Z2,  (d)1/(1/Z1 +  1/Z2)

//initializing the variables:
Z1 = 3 + 4*%i;
Z2 = 2 - 5*%i;

//calculation:
za = 1/Z1
zb = 1/Z2
zc = za + zb
zd = 1/zc
zax = real(za)
zay = imag(za)
zbx = real(zb)
zby = imag(zb)
zcx = real(zc)
zcy = imag(zc)
zdx = real(zd)
zdy = imag(zd)

printf("\n\n Result \n\n")
printf("\n (a)1/Z1 is %.3f + (%.3f)i", zax,zay)
printf("\n (b)1/Z2 is %.3f + (%.3f)i", zbx,zby)
printf("\n (c)1/Z1 + 1/Z2 is %.3f + (%.3f)i", zcx,zcy)
printf("\n (d)1/(1/Z1 + 1/Z2) is %.3f + (%.3f)i", zdx,zdy)