//caption:Find deviation
//Ex2.14
clc
clear
close
x1=25.65//first reading(in W)
x2=24.39//second reading(in W)
x3=23.75//third reading(in W)
x4=26.42//fourth reading(in W)
x5=24.92//fifth reading(in W)
n=5//number of readings
X=(x1+x2+x3+x4+x5)/5
d1=x1-X
d2=x2-X
d3=x3-X
d4=x4-X
d5=x5-X
D1=d1//mod of d1
D2=-(d2)//mod of d2
D3=-(d3)//mod of d3
D4=d4//mod of d4
D5=-(d5)//mod of d5
D=(D1+D2+D3+D4+D5)/n
disp(D,'deviation(in W)=')