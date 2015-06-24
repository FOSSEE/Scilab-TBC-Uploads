//ex12.2
del_t=1;    // in microseconds
//lower limit is -9V and upper limit is 9V from the graph
del_V_out=9-(-9);
slew_rate=del_V_out/del_t;
disp(slew_rate,'slew rate in volts per microseconds')