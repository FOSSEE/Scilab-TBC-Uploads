//1.10
clc;
disp('If the thyristor is fired at 60 degree')
Irms=(0.8405*((%pi-%pi*60/180)-sin(2*%pi)/2+sin(2*%pi*60/180)/2))^0.5;
R=100;
P=Irms^2*R;
printf("Power supplied to load=%.0f W",P)
disp('If the thyristor is fired at 45 degree')
Irms=(0.8405*((%pi-%pi*45/180)-sin(2*%pi)/2+sin(2*%pi*45/180)/2))^0.5;
R=100;
P=Irms^2*R;
printf("Power supplied to load=%.1f W",P)
disp('If the thyristor is fired at 60 degree')
Iavg=3.25/(2*%pi)*(-cos(%pi)+cos(%pi*60/180))
printf("Average Current=%.3f A",Iavg)
disp('If the thyristor is fired at 45 degree')
Iavg=3.25/(2*%pi)*(-cos(%pi)+cos(%pi*45/180))
printf("Average Current=%.3f A",Iavg)