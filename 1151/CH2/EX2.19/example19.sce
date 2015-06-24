printf ("time required ny the thermometer to indicate 9805 of the response to a step input=1 minute=60 seconds");
printf("for 1st order sytem \n c(t)=1-e^(-t/T)\n we have to find time constant T");
c=0.98;
d=1-c;
f=log(d);
h=-60/f;
disp(h,"time constant T (in sec)=");
