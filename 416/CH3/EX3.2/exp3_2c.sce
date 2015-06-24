clear
clc
disp("example 3.2")
c=2*10^8;//cost
s=0.15;//salvage value
ul=25; ///useful value
i=0.08;//life of plant
disp("solution for (a)")
printf("\nannual straight line depreciation reserve =Rs.%.1eperyear\n",c*(1-s)/ul)
disp("solution for (b)")
it=(i+1)^25-1
iit=i/it
asdr=c*(1-s)*iit*100
printf("\n annual sinking fund depreciation reserve is =Rs%.3eperyear",asdr)
