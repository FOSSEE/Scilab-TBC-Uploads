//example 8.6
clc;
clear;
disp('Here what happens at each point in time' );
disp('Time  t0: S = 0, R = 0,  no change in Q (Q remains 0)');
disp('Time  t1: S = 1, R = 0,  Q changes from 0 to 1');
disp('Time  t2: S = 0, R = 1,  Q resets to 0');
disp('Time  t3: S = 1, R = 0,  Q sets to 1 ');
disp('Time  t4: S = 0, R = 0,  no change in Q (Q remains 1)');
disp('Notice that either R or S, or both, are allowed to change state at any time, whether C is high or low. The only time both R and S must be stable (unchanging) is during the short NTs of the clock.');