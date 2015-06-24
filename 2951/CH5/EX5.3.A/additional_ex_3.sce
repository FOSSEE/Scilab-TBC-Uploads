clc;
clear;
fm=5;// maximum analog frequency in kHz
Min_dyna_range=35;
Vr=3; //Voltage in the receiver in V

//a)
F_sampling=2*fm;

//b)
n=Min_dyna_range/6;
k=(Vr-(-Vr)+1);// inclusive of sign bit

//c)
Resolution=Vr/(2^(7));

//d)
Max_quant_Error=Resolution/2

disp(F_sampling,"a)Minimum Sampling Rate(in kHz) =");
disp(n,"b) Minimum dynamic Range is");
disp(" But Closest whole number is 6. Henc,6 bits must be used for amplitude" );
disp("But the amplitude range is from -3 to +3 V,hence a sign bit also   ");
disp( k,"becomes necessary..Therefore,the total number of bits");
disp(Resolution,"c) Resolution(in V) =");
disp(Max_quant_Error," d)MAximum Quantization Error (in V) ");
