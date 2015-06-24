exec('Example2_1a.sce', -1)
clc

//Sample Problem 2-1b
printf("\n**Sample Problem 2-1b**\n")
time = distance_covered / velocity  //in hr
delta_t = time  + next_time /60  //in hr
printf("Time interval from the begining of the drive to the arrival at the station is %f hr", delta_t)