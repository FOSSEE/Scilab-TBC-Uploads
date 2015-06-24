//Average Computations

clear;
clc;

printf("\tExample 6.6a\n");

//First and Last point are arbitary to plot the required 4 points
n=[0 1 2 3 4 5];
TS=[510 520 512 515 522 525];

plot(n,TS,'+');
xtitle('Tensile strength data','Sample no.','Tensile strength');

//Mean Tensile strength
i=2;
TSmean=0;

for i=2:5
    TSmean=TSmean+(TS(i)/4);
end
printf("\nMean tensile strength is %d MPa\n",TSmean);

//End
