//pagenumber 117 example 25
clear
u=0.05;//metre square per velocity second correction in the book
un=0.13;//metre square per velocity second
condun=20;//second per metre conductivity of n region
condup=1000;//second per metre conductivity of p region
p=condup/(1.6*10^-19*u);
no=condun/(1.6*10^-19*un);
disp("electrons density   =   "+string((no))+"per cubic metre");
disp("holes density   =   "+string((p))+"per cubic metre");//others to find is not in the book

