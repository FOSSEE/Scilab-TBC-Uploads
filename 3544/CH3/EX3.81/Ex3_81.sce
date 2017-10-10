
//Key expansion example

n = 0:15
n = int8(n)
disp("Byte position(decimal)")
for i=1:length(n)
    printf("%4d",n(i))
end

disp("")

disp("Value(hex)")

for i=1:length(n)
    printf("  %s","0"+string(dec2hex(n(i))))
end

disp("")

for i=0:3
    printf("\n\tW[%d]\t\t\t",i)
    for j=1:4
        printf("0%s\t",string(dec2hex(n(i*4+j))))
    end
    
end
