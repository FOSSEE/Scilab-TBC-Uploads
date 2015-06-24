//Determine the no. of users supported

BHA = 1.2;
ACH = 120;

C = 40.26;   //from Erlang B table

At = (BHA*ACH)/3600;
N = C/At;

disp(N, 'No. of users supported');