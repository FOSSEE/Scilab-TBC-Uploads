//root sensitivity
s=%s
sys1=syslin('c',1/(s*(s+1)))
evans(sys1)

sys2=syslin('c',(s+2)/(s^2*(s+1)^2))
evans(sys2)

printf("root densitivity at breakaway points is infinite")




