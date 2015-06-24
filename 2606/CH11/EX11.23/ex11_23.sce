//Page Number: 11.26
//Example 11.23
clc;
//Given
B=4D+3; //Hz
S=0.1D-3; //W
n=2*(1D-12); //W/hz

N=n*B;
SN=S/N;
//As Channel Capacity
//C=B*(log2(1+(S/N)));
C=B*(log2(1+(S/N)));
disp('b/s',C,'Channel Capacity');
