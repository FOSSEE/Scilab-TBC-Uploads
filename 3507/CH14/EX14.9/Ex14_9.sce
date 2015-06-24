// chapter14
// example14.9
// page 303

// figure given in book is for reference only. It is not required to solve the example since the required details are very clearly specified in the problem statement.
// moreover more data is needed to plot the graph given in book.

Av_max1=2000 // for 2 kHz
Av_sqrt_2=1414 // for 10 kHz and 50 Hz

percent_Av_max1=70.7*Av_max1/100
printf("70.7 percent of maximum gain 2000 is = %.3f \n",percent_Av_max1)

if Av_sqrt_2==percent_Av_max1
printf("we observe that 70.7 percent of max gain 2000 is 1414 \n")
printf("this gain 1414 is at 50 Hz and 10 kHz \n")
printf("so bandwidth = 50 Hz to 10 kHz \n \n")

printf("since frequency on lower side at which gain falls to \n70.7 percent is 50 Hz.So lower cutoff frequency = 50 Hz \n \n")
printf("since frequency on upper side at which gain falls to \n70.7 percent is 10 kHz.So upper cutoff frequency = 10 kHz \n \n")
else printf("data is insuficient for finding bandwidth and cutoff frequencies \n")
end
