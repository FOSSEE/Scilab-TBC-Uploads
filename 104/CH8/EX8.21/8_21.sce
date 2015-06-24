//effect of moving pole away from jw axis
s=%s
sys1=syslin('c',(s+2)/(s*(s^2+2*s+1)))    //a=1 
evans(sys1)
sys2=syslin('c',(s+1)/(s*(s^2+2*s+1.12)))   //a=1.12
evans(sys2)
sys3=syslin('c',(s+1)/(s*(s^2+2*s+1.185)))    //a=1.185
evans(sys3)
sys4=syslin('c',(s+1)/(s*(s^2+2*s+3)))   //a=3
evans(sys4)
printf("as pole is moved away from jw axis RL also moves away from jw axis")