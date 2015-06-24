meaneach  = 167;
sdeach = 27;
num = 36;
sdtotal = sdeach/sqrt(num);
//sdtotal = sdtotal*sdtotal;
//disp(sdtotal)
disp(cdfnor("PQ", 170, meaneach, sdtotal)-cdfnor("PQ", 163, meaneach,sdtotal ), "Probability that the sample mean of their weights lies between 163 and 170(when sample size is 36)")

num=144;
sdtotal = sdeach/sqrt(num);
//disp(sdtotal)
disp(cdfnor("PQ", 170, meaneach, sdtotal)-cdfnor("PQ", 163, meaneach,sdtotal ), "Probability that the sample mean of their weights lies between 163 and 170(when sample size is 144)")

//The answer given in the textbook is incorrect as (170-167)/4.5 is not equal to 0.6259 . 