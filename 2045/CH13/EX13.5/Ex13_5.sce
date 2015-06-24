//pagenumber 581 example 5
clear
voltag=2000;//volt
d=2*10^-2;//metre
//(1) frequency
vx=sqrt(2*1.6*10^-19*(voltag)/(9.11*10^-31));
durati=d/vx;
freque=1/(2*durati);
disp("max frequency   "+string((freque))+"hertz");
//(2)
durati=60*durati;
disp("duration electron between the plates   =   "+string((durati))+"second");//correction in book



