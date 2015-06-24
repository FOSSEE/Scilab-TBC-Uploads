//Given that
exec('Example2_1a.sce', -1)
exec('Example2_1a.sce', -1)
clc

//Sample Problem 2-1d
printf("\n**Sample Probelm 2-1d**\n")
time_station = 45  //in min
//he trevels 2 km back to the truck
final_displacement = overall_displacement + 2  //in km
final_average_velocity = final_displacement /(delta_t + time_station /60)
printf("Average velocity from the begining of the drive till reaching back to the truck is %f km/h", final_average_velocity)