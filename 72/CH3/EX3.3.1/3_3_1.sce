
//chapter_no.-3,  page_no.-93
//Example_no.3-3-1
clc;

//(a)Calculate_the_reflection_coefficient


Zl=73-(%i*42.5);
Z0=50+(%i*.01);
rl=(Zl-Z0)/(Zl+Z0);
x=real(rl);
y=imag(rl);
o=atand(y,x);
disp(o,'the_phase_of_reflection_coefficient is =');

M=abs(rl);//magintue_of_r
disp(M,'the_magnitude_of_reflection_coefficient_is =');
disp(rl,'the_reflection_coefficient is =');



//(b)Calculate_the_standing-wave_ratio


p=(1+M)/(1-M);
disp(p,'the_standing-wave_ratio is =');
