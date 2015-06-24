//example1.5
clc
disp("Application of Kirchhoffs law:")
disp("Step 1 and 2: Draw the circuit with all values which are same as the given network. Mark all the branch starting from +ve of any of the source, say +ve of 50V source.")
disp("Step 3: Mark all the polarities for different voltages across the resistances. This is combined with step2 shown in the network below in fig 1.41(a).")
disp("Step 4: Apply KVL to different loops.")
disp("Loop 1: A-B-E-F-A , -15(I_1)-20(I_2)+50=0")
disp("Loop 2: B-C-D-E-B , -30((I_1)-(I_2))-100+20(I_2)=0")
disp("Rewriting all the equations,taking constants in one side.")
disp("15(I_1)+20(I_2)=50  ..(1)")
disp("-30(I_1)+50(I_2)=100  ..(2)")
disp("Apply cramers rule,")
d=(15*50)-(-30*20)
format(5)
disp(d,"D=[15 20;-30 50]=")
disp("Calculating D_v")
d=(50*50)-2000
disp(d,"D1=[50 20;100 50]=")
i=500/1350
disp(i,"I_1(in amp)=(D_1)/D=")
disp("Calculating D2 ,")
d=1500+(30*50)
disp(d,"D2=[15 50;-30 100]=")
i=3000/1350
disp(i,"I_2(in amp)=D2/D=")
disp("For I_1 and I_2, as answer is positive, assumed direction is correct")
disp("Therefore, for I_1 answer is 0.37 amp. For I_2 answer is 2.22amp")
i=0.37-2.22
format(5)
disp(i,"(I_1)-(I_2)[in amp]=")
disp("Negative sign indicates assumed direction is wrong.")
disp("i.e (I_1)-(I_2)=1.85A flowing in opposite direction to that of the assumed direction.")
