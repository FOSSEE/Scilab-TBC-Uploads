//caption:Find deviation
//Ex2.13
clc
clear
close
x1=25.65//first reading(in W)
x2=24.39//second reading(in W)
x3=23.75//third reading(in W)
x4=26.42//fourth reading(in W)
x5=24.92//fifth reading(in W)
X=(x1+x2+x3+x4+x5)/5
d1=x1-X
disp(d1,'deviation=')
d2=x2-X
disp(d2,'deviation=')
d3=x3-X
disp(d3,'deviation=')
d4=x4-X
disp(d4,'deviation=')
d5=x5-X
disp(d5,'deviation=')