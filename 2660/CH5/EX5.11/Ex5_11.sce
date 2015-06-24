clc
pmv = 15000 // present market value in Rs
ss = 6000 // sum needed to make it serviceable in Rs
ic = ss + pmv //  investment cost in Rs
pbv = 30000 // present book value in Rs
sv = 15000 // salvage value in Rs
ui = pbv - sv // unamortized investment in Rs
printf("\n Investment cost = Rs %d\n Unamortized investment = Rs %d" , ic , ui)
