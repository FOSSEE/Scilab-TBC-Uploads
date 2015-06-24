clc;
//Example 1.11
//Page no 24

//Solution

R=100;

T=17+273;

N=([1.38*(10^-23)]*[T]*[1*(10^4)]);

disp('W',N,"N = "); 

disp("Substituting in equation 1-16 (refer pgno 23) give the noise power in dBm: ");

N1=-174+[10*log10(10000)];

disp('dBm',N1,"N = ");

//(b)

disp("(b)The rms noise voltage is found by substituting into equation 1-17 (refer pgno 23): ");

V=sqrt(4*R*N);

disp('V',V,"Vn = ");  
