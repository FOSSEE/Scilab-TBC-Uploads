//Graphical//
//Caption:Conveting single pole LPF Butterworth filter into BPF
//Exa8.4.1
//page698
clc;
Op = sym('Op'); //pass band edge frequency of low pass filter
s = sym('s');
Ol = sym('Ol');  //lower cutoff frequency of band pass filter
Ou = sym('Ou'); //upper cutoff frequency of band pass filter
s1 = Op*(s^2+Ol*Ou)/(s*(Ou-Ol)); //Analog transformation for LPF to BPF
H_Lpf = Op/(s+Op); //single pole analog LPF Butterworth filter
H_Bpf = limit(H_Lpf,s,s1); //analog BPF Butterworth filter
disp(H_Lpf,'H_Lpf =')
disp(H_Bpf,'H_Bpf =')
//Result
//H_Lpf = Op/(s+Op)   
//H_Bpf = (Ou-Ol)*s/(s^2+(Ou-Ol)*s+Ol*Ou) 
