clear;
clc;
disp("--------------Example 11.11---------------")
// example explaination 
printf("This example shows an exchange in which a frame is lost. The sequence of events that occur is as follows :\n\n* Node B sends three data frames (0, 1,and 2), but frame 1 is lost.\n\n* When node A receives frame 2, it discards it and sends a REJ frame for frame 1 since the protocol being used is Go-Back-N\nwith the special use of an REJ frame as a NAK frame.\n\n* The NAK frame does two things here: It confirms the receipt of frame 0 and declares that frame 1 and any following frames must be resent.\n\n* Node B, after receiving the REJ frame, resends frames 1 and 2.\n\n* Node A acknowledges the receipt by sending an RR frame (ACK) with acknowledgment number 3.");