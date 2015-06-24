// page no 449
// example no 15.1
// PORT ADDRESS CONTROL WORD ADDRESS AND READ THE DIP SWITCHES
clc;
printf('1 Port Address \n \n');
printf('Port A                  =    8000H  (A1=0,A0=0) \n');
printf('Port B                  =    8001H  (A1=0,A0=1) \n');
printf('Port C                  =    8002H  (A1=1,A0=0) \n');
printf('Control Register        =    8003H  (A1=1,A0=1) \n \n');


printf('2 Control Word \n \n');
printf('D7 D6 D5 D4 D3 D2 D1 D0 \n');
printf('1  0  0  0  0  0  1  1         = 83H \n \n'); 
printf('D7=1     I/O Function \n');
printf('D6,D5=0  Port A in Mode 0 \n');
printf('D4=0     Port A= output \n');
printf('D3=0     Port C upper= output \n');
printf('D2=0     Port B in Mode 0 \n');
printf('D1=1     Port B= input \n');
printf('D0=1     Port C1= input \n \n');


printf('3 Program \n \n');
printf('MVI A,83H \n');  // load accumulator with the control word.
printf('STA 8003H \n');  // write word in the control register to initialize the ports.
printf('LDA 8001H \n');  // reads switches at port B.
printf('STA 8000H \n');  // display the reading at port A.
printf('LDA 8002H \n');  // read switches at port C.
printf('ANI 0FH \n');    // mask the upper four bits of port C, these bits are not input data.
printf('RLC \n');        // rotate and place the data in the upper half of the accumulator.
printf('RLC \n');
printf('RLC \n');
printf('RLC \n');
printf('STA 8002H \n');  // display data at port C upper.
printf('HLT \n');
