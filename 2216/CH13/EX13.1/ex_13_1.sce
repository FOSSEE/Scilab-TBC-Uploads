//Example 13.1: plot
clc;
clear;
close;
lod=[0;20;40;60;80;100;160];//in micro meter
slong=[1.0;0.95;0.92;0.89;0.86;0.83;0.80];//
lad=[0;10;20;30;40;50;60;70;80;90;100];//in micro meter
slat=[0;0.1;0.2;0.3;0.4;0.5;0.6;0.7;0.8;0.9;1.0];//
add=[0;1;2;3;4;5;6;7;8;9;10];//
sang=[0;0.5;0.6;0.7;0.8;0.9;1.0;1.1;.12];//
t=0:20:200;
s1=1.0:-0.03:0.7;//
subplot(131)
plot(t,s1);//
xtitle("Variation of Slong as a function of Δ x (with Δy=0 and Δθ=0) ")
xlabel("Longitudinal displacement Δ x (micro meter)")
ylabel("Slong (normalised)")
t1=0:10:100;
s2=1:-0.1:0;//
subplot(132)
plot(t1,s2);//
xtitle("Variation of Slat as a function of Δ y (with Δx=0 and Δθ=0) ")
xlabel("Lateral displacement Δ y (micro meter)")
ylabel("Slat (normalised)")
t2=0:1:10;
s3=1.0:-0.03:0.7;//
subplot(133)
plot(t2,s3);//
xtitle("Variation of Sang as a function of Δ θ (with Δx=0 and Δy=0) ")
xlabel("Angular displacement Δ θ (deg)")
ylabel("Sang (normalised)")
