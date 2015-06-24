//ANALOG AND DIGITAL COMMUNICATION
//BY Dr.SANJAY SHARMA
//CHAPTER 5
//ANGLE MODULATION
clear all;
clc;
printf("EXAMPLE 5.29(PAGENO 256)");

//given
delta_f = 75*10^3//frequency deviation
f_m = 15*10^3//modulating frequency

//calculations
D = delta_f/f_m//deviation ratio
BW1 = 2*delta_f*(1+(1/D))//bandwidth of FM signal
//using universal curve, replacing m_f by D,we get
BW2 = 3.2*delta_f//for D = 5=3.2*75*10^3
BW = (BW2-BW1)*100/BW2//percentage of under estimation of bandwidth by using carson's rule

//results
printf("\n\ni.Bandwidth of FM signal = %.2f Hz",BW1);
printf("\n\nii.Bandwidth obtained by replacing m_f by D = %.2f Hz",BW2);
printf("\n\niii.Percentage of under estimation of bandwidth by using Carson rule = %.2f percent",BW);
disp("It means that cason s rule under estimates the band-width by 25% as compared with the resulat obtained from the universal curve.");
