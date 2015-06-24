//example 16.1 
clc
clear
//len = input('Enter the length of each memory location in bits :');
//op = input('Enter the length of Opcode:');
len =16;
op=4;
nop= 2^4;   // calculating 
nab = len-op;
memloc = 2^nab;
memsize = memloc*16;
mem=memsize/1024;
printf('(a)Maximum Number of Opcodes = %d \n',nop); // displaying 
printf(' (b)Size of memory in Kilo bits = %d \n',mem);
printf(' (c)Size of PC and MAR = %d \n',nab );
printf('   Size of IR = %d\n',op);
printf('   Size of ACC and MDR = %d \n',len);