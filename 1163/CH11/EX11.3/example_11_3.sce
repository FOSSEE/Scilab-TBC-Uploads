clear;
clc;
disp("--------------Example 11.3---------------")
// example explaination 
printf("This an example of Stop-and-Wait ARQ. The series of events taking place are as follows : \n\n* Frame 0 is sent and acknowledged.\n* Frame 1 is lost and resent after the time-out.\n* The resent frame 1 is acknowledged and the timer stops.\n* Frame 0 is sent and acknowledged, but the acknowledgment is lost.\n* The sender has no idea if the frame or the acknowledgment is lost, so after the time-out, it resends frame 0, which is acknowledged.")