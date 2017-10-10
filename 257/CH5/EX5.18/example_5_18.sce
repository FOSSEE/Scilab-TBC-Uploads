s=%s

a=(1/(s+2))/(1+(1/(s+2)*4))
b=a*(3*s/(s+4))                      //shifting take off point to the right
c=b/(1+(b*(5/s)))
d=1+ ( (s/(s+3)) * ((s+4)/(3*s)) )
Y=d*c

disp(Y,"Y/R = ")

disp((s+3)*(s^2+10*s+39))