//pagenumber 116 example 23
clear
area12=1*10^-8;//metre square
volre1=-1;//reverse voltage
capac1=5*10^-12;//farad
volbu1=0.9;//volt
voltag=0.5;//volt
i1=10*10^-3;//ampere
durmin=1*10^-6;//ssecond
//(1) capacitance
capac1=capac1*sqrt((volre1-volbu1)/(voltag-volbu1));
disp("depletion capacitance   =   "+string((capac1))+"farad");
//(2) capacitance
capac1=i1*durmin/(0.026);

disp("capacitance   =   "+string((capac1))+"farad");




