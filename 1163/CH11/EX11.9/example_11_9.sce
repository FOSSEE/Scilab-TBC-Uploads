clear;
clc;
disp("--------------Example 11.9---------------")
// example explaination 
printf("This example shows how U-frames can be used for connection establishment and connection release.\n\n* Node A asks for a connection with a set asynchronous balanced mode (SABM) frame; node B gives a positive response with\n  an unnumbered acknowledgment (UA) frame.\n* After these two exchanges, data can be transferred between the two nodes (not shown in the figure).\n* After data transfer, node A sends a DISC (disconnect) frame to release the connection; it is confirmed by node B\n  responding with a UA (unnumbered acknowledgment).");