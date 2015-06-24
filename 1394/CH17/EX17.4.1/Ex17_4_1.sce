

clc
//initialization of variables
//For first reaction
D1 = 9.3*10^-5 // cm^2/sec
D2 = 5.3*10^-5 // cm^2/sec
K1exp = 1.4*10^11 // litre/mol-sec
sigma12 = 2.8*10^-8 // cm
N = (6.02*10^23)/10^3// liter/cc-mol
K1 = 4*%pi*(D1+D2)*sigma12*N // Rate constant for first reaction in litre/mol-sec
printf("The rate constant for this reaction is %.1e litre/",K1)
if K1>K1exp
     then disp("This reaction is controlled more by chemical factors")
    else
         disp("This reaction is diffusion controlled")
end
//Second reaction
D1 = 5.3*10^-5 // cm^2/sec
D2 = 0.8*10^-5 // cm^2/sec
sigma12 = 5*10^-8 // cm
K1exp = 3.8*10^7 // litre/mol-sec
K1 = 4*%pi*(D1+D2)*sigma12*N // Rate constant for second reaction in litre/mol-sec
printf("The rate constant for this reaction is %.1e litre/mol-sec",K1)
if K1>K1exp then 
    disp("This reaction is controlled more by chemical factors")
else 
    disp("The reaction is diffusion controlled")
end
