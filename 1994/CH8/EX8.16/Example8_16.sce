//Chapter-8,Example8_16,pg 61
//R4=Rv
R1=10*10^3
R2=10*10^3
R3=10*10^3
R4=R1*R3/R2
E=10
printf("bridge is balanced at 80deg. from graph when Rv=10k\n")
//at 60deg bridge is unbalanced 
R4=9*10^3//from graph
e=E*((R4/(R3+R4))-(R1/(R1+R2)))//thevenin's voltage
printf("error voltage\n")
printf("e=%.4f V\n",e)
printf("negative sign indicates opposite polarity of error voltage")
