// page no 375
// example no 12.3
// CHECK PENDING INTERRUPT
clc;
printf('RIM instruction interpretation \n \n');
printf('D7=SID                      Serial input data if any \n');
printf('D6,D5,D4= I7.5,I6.5,I5.5    Pending interrupts: 1= pending \n');
printf('D3=IE                       Interrupt enable flag: 1= enabled \n');
printf('D2,D1,D0= M7.5,M6.5,M5.5    Interrupt masks: 1= masked \n \n \n');


printf('Instructions \n \n');
printf('        RIM \n');            // Read interrupt mask
printf('        MOV B,A \n');        // save mask information
printf('        ANI 20H \n');        // check whether RST 6.5 is pending
printf('        JNZ NEXT \n');
printf('        EI \n');
printf('        RET \n');           // RST 6.5 is not pending, return to main program
printf('NEXT:   MOV A,B \n');       // get bit pattern; RST 6.5 is pending
printf('        ANI 0DH \n');       // enables RST 6.5 by setting D1=0
printf('        ORI 08H\n');        // enable SIM by setting D3=1
printf('        SIM \n');
printf('        JMP SERV \n');      // jump to service routine for RST 6.5
