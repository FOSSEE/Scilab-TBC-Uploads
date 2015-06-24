clc
//Chapter3: Modulation
//Example3.25, pageno 175
//Given
//em=3sin(2*pi*1000t)+5cos(2*pi*3000t)
//ec=50sin(2*pi*500e3*t)
m1=0.06//(sine wave amplitude/ peak carrier voltage)
m2=0.1//(cosine wave amplitude/ peak carrier voltage)
Vc=50//Carrier voltage
R=50//load resistance
Pc=(Vc^2)/(2*R)//Peak carrier power
Pt=Pc*(1+((m1^2+m2^2)/2))//Total power after modulation
mprintf('Average power is: %f watts',Pt)
F=[0,2.5,1.5,50,1.5,2.5,0]
T=[490,497,499,500,501,503,510]
plot2d3(T,F,5)
xlabel("Freq", "fontsize",3);
ylabel("Amplitude", "fontsize",3, "color", "blue");
