
clc;
clear;

//Required storage space in Bytes
Storage_space = 1024 * 1024 * 3 ;

//Required storage space in Kilo Bytes
Storage_space = Storage_space / 1000; //1 KB = 1000 Byte

format('v',9)
disp(Storage_space,"The storage space required for a 1024 x 1024 24-bit colour image (in KB) is ")
