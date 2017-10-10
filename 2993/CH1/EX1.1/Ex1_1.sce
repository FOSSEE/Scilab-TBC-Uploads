
clc;
clear;

//Number of bits required
bits_required = 1024 * 1024 * 1;

//Required Storage space in Bytes
Storage_space = bits_required / 8;// 1 Byte = 8 bit

//Required Storage space in Kilo Bytes
Storage_space = Storage_space / 1000; //1 KB = 1000 Byte

format('v',8)
disp(Storage_space,"The storage space required for a 1024 x 1024 binary image (in KB) is ")
