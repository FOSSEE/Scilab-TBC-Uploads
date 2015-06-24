clc;
// page no 676
// prob no 18_2_2
//A drum scanner in eg.18.2.1 with pitch=0.26mm/line & diameter=68.4mm & drum rotate at 120rpm & scans lines=1075
D=68.4;P=0.26;rpm=120;n=1075;
//Determination of no. of pixels scan
Npx=(%pi)*(D/P);
disp('pixels/line',Npx,'The no. of pixels in scan line is');
//Determination of scan rate
Rs=rpm/60;
disp('lines/sec',Rs,'The scan rate is');
//Determination of pixel rate is 
Rpx=Npx*Rs;
disp('pixels/sec',Rpx,'The pixel rate is');
f_max=Rpx/2;
//Determination of document Tx time
td=n/(60*Rs);
disp('min',td,'The document Transmission time is');