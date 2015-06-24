clc
clear
disp("example 4 12")
psm=100 //power of synchrounous motors
pim=200 //power of inducion motor
v=400 //voltage 
pff=0.71;pp=-1//power factor
rsm=0.1 //resistance of synchrounous motor
rt=0.03 //resistance of cable
pf(1)=1;p(1)=1 //power factor in a
pf(2)=0.8;p(2)=1 //power factor in b
pf(3)=0.6;p(3)=1 //power factor in c
i1=pim*1000/(v*pff*sqrt(3))
i11=i1*(complex(pff,pp*sind(acosd(pff))))
i2f=psm*1000/(v*sqrt(3))
ch=['a' 'b' 'c']
for i=1:3
    printf("\n (%c)",ch(i))
    d=acosd(pf(i))
    it(i)=i11(1)+complex(i2f,(p(i)*i2f*tand(d)))
    opf(i)=cosd(atand(imag(it(i))/real(it(i))))
    clsm=3*((i2f)^2)*rsm
    clt=3*(abs(it(i))^2)*rt/1000
    printf("\n total current %.2f %.fjA \n overall power factor %.3f lagging \n copper losses in synchrounous motor %.fW \n copper losses in cable %.2fKW",it(i),imag(it(i)),opf(i),clsm,clt)
end
disp("(d)")
printf("copper loss of synchronous motor this is evidently minimum when tand=%d cosd=%d",0,1)