// Chapter4
// Page.No-136, Figure.No-4.24
// Example_4_9_b
// Output waveform
// Given
clear;clc;
t =0:0.1:2*%pi;
y = -1000*sin(t)+91.8;
a = gca();
a.x_label.text = 'Time';
a.y_label.text = 'Voltage';
a.title.text = 'Output waveform';
plot2d(t,y);
t1=0:0.1:2*%pi;
y1=91.8*(t1>=0);
b=gca();
b.line_style=3;
plot2d(t1,y1);