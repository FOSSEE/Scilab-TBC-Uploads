//Determine bandwidth requirement for an FM signal

del = 10;
fm = 2;
fms = 8;

mf = del/fm;
bw = fm*fms*2;

disp(bw, 'Bandwidth requirement for an FM signal (in Khz) ');