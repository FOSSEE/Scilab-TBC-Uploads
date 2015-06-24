
clc;
clear;
//Given:
spacing=20//in Hz
bg=100//in Hz
bw=5//modulated by a signal Hz
printf("\n\n\t first sideband pair %d to 100Hz and 100Hz to %d",(bg-bw),(bg+bw) );
//For second pair 
bg2=120// in Hz
bw=5//modulated by a signal Hz
printf("\n\n\t second sideband pair %d to 120Hz and 120Hz to %d",(bg2-bw),(bg2+bw) );
printf("No overlap occurs");