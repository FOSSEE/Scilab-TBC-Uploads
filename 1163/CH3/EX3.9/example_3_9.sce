clear;
clc;
disp("--------------Example 3.9--------------")
fl=0; // 0kHz
fh=4; // 4kHz
// example explanation
printf("Figure shows a nonperiodic composite signal. It can be the signal created by a microphone or a telephone set when a word or two\nis pronounced. In this case, the composite signal cannot be periodic, because that implies that we are repeating the same word or\nwords with exactly the same tone.\n\n");
printf("In a time-domain representation of this composite signal, there are an infinite number of simple sine frequencies.\nAlthough the number of frequencies in a human voice is infinite, the range is limited. A normal human being\ncan create a continuous range of frequencies between %d and %d kHz.",fl,fh);
printf("\n\nThe frequency decomposition of the signal yields a continuous curve. There are an infinite number of frequencies between %2.1f\nand %5.1f (real values). To find the amplitude related to frequency f, draw a vertical line at f to intersect the envelope curve.\nThe height of the vertical line is the amplitude of the corresponding frequency.",fl,fh*10^3);
clf();
xname("--------------Example 3.9----------------");
//display the figure
subplot(121) // time domain plot
a1=gca();
x=[0:.001:10]; // x-range
a1.title.text="a. Time domain";
a1.x_location = "middle";
a1.x_label.text="Time"; // display the quantity along x-axis
a1.y_label.text="Amplitude"; // display the quantity along y-axis
plot(x,sin(.5*cos(x))+.8*sin(3*x)+sin(9*x)+sin(57*x)+cos(57*x)+sin(%pi/7*x)); // equation to be plotted

subplot(122) // frequency domain plot
a1=gca();
p=[0:.01:%pi/5]; // x-range
a1.title.text="b. Frequency domain";
a1.x_location = "bottom";
a1.x_label.text="Frequency"; // display the quantity along x-axis
a1.y_label.text="Amplitude";// display the quantity along y-axis
a1.data_bounds=[0,0;2,5];
// equations for the plot
plot(p,%e^p+2^p-2);
xset("color",2);
xpoly([.62 1.5],[1.4 1.4]);
xarc(1.02,1.54,.5,.5,0,64*25);
xpoly([1.52 1.8],[1.31 0])
xpoly([.62 .62],[0 1.4])
xfarc(.6,1.41,.05,.05,0,64*360)
xset("font size",2)
xstring(.6,1.5,"Amplitude for sine wave of frequency f");
xstring(.59,0,"f                                                                                           4 kHz")