//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 2
//AMPLITUDE MODULATION
clear all;
clc;
printf("EXAMPLE 2.2(PAGENO 51)");

//given
//v_m = 10*sin(2*%pi*10^3*t)
//by comparing with v_m = V_m*sin(2*%pi*f_c*t) we get
V_m = 10//in volts
f_m = 1*10^3//in hertz
V_c = 20//in volts
f_c = 1*10^4//in hertz

//calculations
m_a = V_m/V_c;//modulation index formula
m_a1 = m_a*100;//percentage modulation index
f_usb = f_c + f_m;//Upper sideband
f_lsb = f_c - f_m;//lower sideband
A = (m_a*V_c)/2//amplitude of upper as well as lower sideband
B = 2*f_m;//bandwidth of the modulation signal

//results
printf("\n\ni.a.Modulation index=%.2f",m_a);
printf("\n\n   b.Percentage modulation index=%.2f percent",m_a1);
printf("\n\nii.a.Upper sidebandfrequency=%f Hz",f_usb);
printf("\n\n    b.Lower sideband frequency=%f Hz ",f_lsb); 
printf("\n\niii.Amplitude of Upper sideband and Lower sideband =%f V",A);
printf("\n\niv.Bandwidth of th modulation signal=%f Hz",B);
