//Determine the no. of circuits for en bloc signaling and overlap signaling

S = 0.7;
Hs = 150;
U = 1-S;
Hu = 20;

SC = 0.8;

Ns = 11;
Nu = 4;

D = S*Hs + U*Hu ;
BHCA = (3600*SC)/D; //Using value from table - 3600
N = Ns*S + Nu*U ;
M1 = ( (95/2)*S + (63/2)*U );    //From Table given
M2 = ( (114/2)*S + (63/2)*U );
N1 = (8000*3600*0.2)/(M1*BHCA);
N2 = (8000*3600*0.2)/(M2*BHCA);

disp(D, 'Mean duration of a call (in s)')
disp(BHCA, 'No. of Busy Hour Call Attempts (BHCA) per circuit')
disp(N+0.1, 'Mean no. of digits dialed per call (apprx.)')
disp(N1, 'No. of circuits serviced by En Bloc Signalling');
disp(N2, 'No. of circuits serviced by Overlap Signalling');