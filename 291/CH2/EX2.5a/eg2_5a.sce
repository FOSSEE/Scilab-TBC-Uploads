data = [90 91 94 83 85 85 87 88 72 74 74 75 77 77 78 60 62 63 64 66 66 52 55 55 56 58 43 46];
disp("According to the empirical rule")
disp("68% of the data lies between")
disp(mean(data)+stdev(data), "and", mean(data)-stdev(data))
disp("95% of the data lies between")
disp(mean(data)+(2*stdev(data)), "and", mean(data)-(2*stdev(data)) )
disp("99.7% of the data lies between")
disp(mean(data)+(3*stdev(data)), "and", mean(data)-(3*stdev(data)))