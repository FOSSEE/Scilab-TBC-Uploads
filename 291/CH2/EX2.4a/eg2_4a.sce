cars = [448162 404192 368327 318308 272122 260486 249128 234936 218540 207977];
interval1 = mean(cars) - (1.5*st_deviation(cars));
interval2 = mean(cars) + (1.5*st_deviation(cars));
data = 100*5/9;
disp(interval2, , "to" , interval1, "Atleast 55.55% of the data lies in the interval" );
