// CAPTION: UP-Converter_parametric_Amplifier
//chapter_no.-8,  page_no.-346
//Example_no.8-5-1
clc;

//(a)Calculate_the_power_gain
R=25;//R=f0/fs ,ratio_of_output_frequency_over_signal_frequency
rQ=10;//figure_of_merit
x=((rQ)^2)/R;
PG=(R*x)/((1+sqrt(1+x))^2);
PG=10*log10(PG);//calculating_in_dB
disp(PG,'Up-converter_power_gain_(in dB)is =');

//(b)Calculate_the_noise_figure

Td=350;//Diode_temperature
To=300;//ambient_Temperature
F=1+(((2*Td)/To)*((1/rQ)+(1/rQ^2)));
F=10*log10(F);//calculating_in_dB
disp(F,'the_noise_figure(in dB)is =');


//(c)Calculate_the_band_width

r=.4//factor_of_merit_figure
BW=2*r*sqrt(R);  //R=fo/fs
disp(BW,'the_band_width_is =');

