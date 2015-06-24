//effect of moving pole near jw axis
s=%s
sys1=syslin('c',(s+1)/(s^2*(s+10)))    //a=10 b=1
evans(sys1)
sys2=syslin('c',(s+1)/(s^2*(s+9)))   //a=9
evans(sys2)
sys3=syslin('c',(s+1)/(s^2*(s+8)))    //a=8
evans(sys3)
sys4=syslin('c',(s+1)/(s^2*(s+3)))   //a=3
evans(sys4)
sys5=syslin('c',(s+1)/(s^2*(s+1)))   //a=1
evans(sys5)
printf("as pole is moved towards jw axis RL also moves towards jw axis")