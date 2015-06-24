//Caption:Find the current per path of armature
//Exam:2.3
clc;
clear;
close;
I_a=200;//rated armature current(in Amp)
P=12;//number of poles in machine
A_1=2;//number of parallel paths with wave winding
A_2=P;//number of parallel paths with lap winding
I_1=I_a/A_1;//current per path in case of wave winding(in Amp)
disp(I_1,'current per path in case of wave winding(in Amp)=');
I_2=I_a/A_2;//current per path in case of lap winding(in Amp)
disp(I_2,'current per path in case of lap winding(in Amp)=');