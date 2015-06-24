printf("\n A thermometer has time constant =15.33sec\n its quickly taken from 0 (degree C) to water bath having a temperatur 100(degree C)\n find the temperature indicated after 60 sec ");
printf("temperature indicated by thermometer can be given as =100*(1-e^-(t/T))");
T=15.33;
t=60;
h=100*(1-%e^-(t/T));
disp(h,"temperature indicated by thermometer(in degree C)) after 60 seconds=")
