clc
//ex6.4
H_max=-30;      //transfer function magnitude
f=60;
m=20;      //low-frequency asymptote slope rate in db/decade
//f_B must be K higher than f where K is
K=abs(H_max)/m;
//(base 10)log(f_B/60)=1.5 ==>
f_B=60*10^1.5;
printf(" All the values in the textbook are approximated, hence the values in this code differ from those of Textbook")
disp(f_B,'Break frequency in Hz')
