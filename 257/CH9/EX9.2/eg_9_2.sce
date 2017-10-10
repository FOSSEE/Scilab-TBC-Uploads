//angle condition
s=%s
sys=syslin('c',(k)/(s*(s+2)*(s+4)))

f=-0.75;
//disp(-atan(s,0))
disp(-atan(f,0)-atan(f,2)-atan(f,4))
if(-atan(f,0)-atan(f,2)-atan(f,4)==(-3.14))
    printf("yes")
    
else
    printf("no")
end

