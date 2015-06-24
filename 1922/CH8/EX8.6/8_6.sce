clc
clear
//Initialization of variables
xe=0.3
xe2=0.9
Pe0=810
Pa0=470
ge=1.85
ge2=1.05
ga=1.15
ga2=3
Pt=820 //mm
Pt2=900 //mm
//calculations
ye=ge*xe*Pe0/Pt
ya=ga*(1-xe)*Pa0/Pt
yt=ye+ya
ye2=ye/yt
ya2=ya/yt
ye3=ge2*xe2*Pe0/Pt2
ya3=ga2*(1-xe2)*Pa0/Pt2
yt2=ye+ya
ye4=ye3/yt2
ya4=ya3/yt2
//results
printf("In case 1, ye = %.3f and ya = %.3f",ye2,ya2)
printf("\n In case 1, ye = %.3f and ya = %.3f",ye4,ya4)
disp('The calculations of ya in case 1 in textbook is wrong. please use a calculator')
