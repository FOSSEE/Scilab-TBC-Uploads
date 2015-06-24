// Variable declaration
n = 50
Meanx = 88.34
Meany = 305.58
s1 = 7239.22
s2 = 17840.1
s3 = 66975.2
x = []
for i = 60:119
    x(i) = i
end    

// Calculation

Slope1 = s2/s1
c1 = Meany - (s2/s1)*Meanx

Slope2 = s2/s3
c2 = Meanx - (s2/s3)*Meany
          
// Result
printf ( "Part-A: , Height = %.2f + %.3f *width",c1,Slope1)
printf ( "Part-B: Height = %.2f + %.3f *width",-c2/Slope2,1/Slope2)

plot(x,c1+Slope1*x)
plot(x,-c2/Slope2 + x/Slope2)
legend(['height = 87.88 + 2.464*width', 'height = -26.11 + 3.759*width'])
xlabel("$Width$")
ylabel("$Height$")
