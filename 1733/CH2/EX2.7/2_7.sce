//2.7
clc;
// the thyristor will conduct when instantenous value of source emf is more than the back emf i.e. 2^0.5*100sin wt=55.5
wt1=asind(55.5/(2^0.5*110));
wt2=180-wt1;
current_average=(1/(2*%pi))*(-15.554*(cosd(wt2)-cosd(wt1))-5.55*(2.7768-0.3684));
printf("\nAverage  current = %.2f A", current_average)