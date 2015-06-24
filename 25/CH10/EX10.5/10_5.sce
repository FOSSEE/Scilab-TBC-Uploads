//example:10.5,page no.-567.
// program to design a two slab remanent phase shifter.
forpims=1786;er=13;f=10*10^9;uo=4*%pi*10^-7;ko=(2*%pi*f)/(3*10^10);
fm=2.8;s=0.1;// s and a in cm.
x=(2*%pi*fm*forpims)/(2*%pi*f);// x=wm/w = k/uo.
a=2.286; // for x-band.
t=.274; //from figure 10.19;
diffphaseshift=0.4*ko*(180/%pi); // differential phase shift.
L_1=180/diffphaseshift; 
L_2=90/diffphaseshift;
disp(L_1,'the ferrite length required for the 180 deg. phase shift section in cm = ')
disp(L_2,'the ferrite length required for the 90 deg. phase shift section in cm = ')