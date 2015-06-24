clear;
clc;
disp("--------------Example 21.6----------------")
// display the sequence of report messages.
printf("The events occur in this sequence:\n\na. Time 12: The timer for 228.42.0.0 in host A expires, and a membership report is sent,\nwhich is received by the router and every host including host B which cancels its timer\nfor 228.42.0.0.\n\nb. Time 30: The timer for 225.14.0.0 in host A expires, and a membership report is sent,\nwhich is received by the router and every host including host C which cancels its timer\nfor 225.14.0.0.\n\nc. Time 50: The timer for 238.71.0.0 in host B expires, and a membership report is sent,\nwhich is received by the router and every host.\n\nd. Time 70: The timer for 230.43.0.0 in host C expires, and a membership report is sent,\nwhich is received by the router and every host including host A which cancels its timer\nfor 230.43.0.0.")
