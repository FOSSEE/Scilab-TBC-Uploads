clc
//initialisation of variables
P= 5 //kips
xab= 3 //in
xbc= 6 //in
xbp= 1 //in
y= 6 //in
n= 3
//CALCULATIONS
Dl= P/3
Pct= (6*P)/(((xab+xbp)*(xab+xbp)/(xbc-xbp))+(xbp/(xbc-xbp))+(xbc-xbp))
R= sqrt(Pct^2+Dl^2)
//RESULTS
printf ('Greatest Load= %.2f kips',R)
