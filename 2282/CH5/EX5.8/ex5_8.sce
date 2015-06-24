// Example 5.8, page no-191 
clear
clc


fd=50          //frequency deviation in kHz
fm=1           //modulating frequency in kHz for case 1
fm2=100        //modulating frequency in kHz for case 2

//for casse 1
m=fd/fm
bw=2*(m+1)*fm
//for case 2
m2=fd/fm2
bw2=2*(m2+1)*fm2

printf("For first case\n Modulation index = %.0f \n Bandwidth = %.0f kHz \n\n For second case\n Modulation index = %.1f \n Bandwidth = %.0f kHz",m,bw,m2,bw2)
