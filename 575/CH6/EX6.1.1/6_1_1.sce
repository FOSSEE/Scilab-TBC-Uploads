clc
pathname=get_absolute_file_path('6_1_1.sce')
filename=pathname+filesep()+'611.sci'
exec(filename)
printf(" All the values in the textbook are Approximated hence the values in this code differ from those of Textbook")
disp("let deltaHv/R = S")
S= - (T1*T2* log(P2/P1))/(T1-T2)
deltahv=S*R
printf(" \n Latent Heat of Vaporization=%d",deltahv)
B=log(P1) + S/T1
printf("\n B=%f",B)
P=exp(-S/T + B)
printf("\n P* at %f K = %f",T,P)