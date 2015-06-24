// Example 5.4, page no-175 
clear
clc

//multiplication of two signals gives AM with frequency component(wc-wm) and (wc+wm) and its BW is 2wm
bw=0.5/100      //bw is 0.5% of carrier freq. 
wc=2/bw
printf("Wc = %.0fWm",wc)
