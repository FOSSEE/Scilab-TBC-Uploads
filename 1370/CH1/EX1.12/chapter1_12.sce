//example1.12
clc
disp("The various loop are shown in the fig 1.64(a)")
disp("Apply KVL to the various loops,")
disp("Loop 1,  -15(I_1)-20(I_1)+20(I_2)+100=0")
disp("Therefore,  +35(I_1)-20(I_2)=100   ...(1)")
disp("Loop 2,  -5(I_2)-30(I_2)+30(I_3)-20(I_2)+20(I_1)=0")
disp("Therefore,  20(I_1)-55(I_2)+30(I_3)=0   ...(2)")
disp("Loop 3,  -5(I_3)-100-30(I_3)+30(I_2)=0")
disp("Therefore,  30(I_2)-35(I_3)=0   ...(3)")
d=35*((55*35)-(30*30))+20*(-35*20)
format(6)
disp(d,"D1=[35 -20 0;20 -55 30;0 30 -35]=")
d=35*(-(100*30))-100*(-35*20)
disp(d,"D2=[35 100 0;20 0 30;0 100 -35]=")
d=35*(-55*100)-(-20*(20*100))+100*(30*20)
disp(d,"D3=[35 -20 100;20 -55 0;0 30 100]=")
i=(-35000)/21875
format(4)
disp(i,"I_2(in amp)=D2/D=")
i=(-92500)/21875
format(7)
disp(i,"I_3(in amp)=D3/D=")
i=(-1.6)+4.2285
disp(i,"I_30(in amp)=(I_2)-(I_3)=")
disp("As (I_2-I_3) is positive, current floes in the assumed direction of I_2")
